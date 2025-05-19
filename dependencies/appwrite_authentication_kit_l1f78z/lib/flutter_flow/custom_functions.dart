import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/library_values.dart';

String? handleError(
  String? errorMessage,
  int? errorCode,
  String? action,
) {
  final message = errorMessage ?? 'Something went wrong';
  final code = errorCode ?? 0;

  // Network errors are common to all actions
  if (message.contains('XMLHttpRequest') ||
      message.contains('xmlhttprequest')) {
    return 'Unable to connect to the service. Please try again later';
  }

  // Handle errors based on action type
  switch (action?.toLowerCase()) {
    case 'initialize':
      return switch (code) {
        400 when message.toLowerCase().contains('endpoint') =>
          'Unable to connect to the service. Please try again later',
        400 when message.toLowerCase().contains('project') =>
          'App configuration error. Please contact support',
        401 => 'Please sign in to continue',
        404 => 'Service not available. Please try again later',
        429 => 'Too many attempts. Please wait a moment before trying again',
        _ => message
      };

    case 'sign in':
      return switch (code) {
        400 when message.toLowerCase().contains('password') =>
          'Your password should be at least 8 characters',
        400 when message.toLowerCase().contains('email') =>
          'Please enter a valid email address',
        401 => 'Incorrect email or password',
        404 => 'No account found with this email',
        429 => 'Too many sign in attempts. Please try again in a moment',
        _ => message
      };

    case 'sign up':
      return switch (code) {
        400 when message.toLowerCase().contains('password') =>
          'Your password should be at least 8 characters',
        400 when message.toLowerCase().contains('email') =>
          'Please enter a valid email address',
        400 when message.toLowerCase().contains('name') =>
          'Please enter a valid name',
        409 => 'An account with this email already exists',
        429 => 'Please wait a moment before trying again',
        475 => 'Please choose a stronger password',
        480 => 'Please verify your email to continue',
        481 => 'Please verify your phone number to continue',
        482 => 'This password is too common. Please choose a different one',
        483 => 'Please choose a different password',
        _ => message
      };

    case 'sign out':
      return switch (code) {
        401 => 'You have been signed out',
        404 => 'Session expired. Please sign in again',
        _ => message
      };

    case 'get user':
      return switch (code) {
        401 => 'Your session has expired. Please sign in again',
        404 => 'Unable to find your account',
        _ => message
      };

    default:
      // Common errors for all actions
      return switch (code) {
        403 when message.toLowerCase().contains('origin') =>
          'This app is not authorized. Please contact support',
        403 when message.toLowerCase().contains('cors') =>
          'Unable to connect securely. Please try again',
        403 => 'You don\'t have permission to perform this action',
        500 => 'Something went wrong on our end. Please try again later',
        503 => 'Service temporarily unavailable. Please try again later',
        504 => 'Connection timed out. Please check your internet and try again',
        _ => action != null ? 'Unable to $action. Please try again' : message
      };
  }
}
