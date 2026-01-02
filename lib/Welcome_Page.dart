import 'package:flutter/material.dart';
import 'Signup_Page.dart';
import 'Signin_Page.dart';

class WelcomePage extends StatelessWidget {
	const WelcomePage({super.key});

	@override
	Widget build(BuildContext context) {
		final colorScheme = Theme.of(context).colorScheme;
		return Scaffold(
			body: SafeArea(
				child: Center(
					child: Padding(
						padding: const EdgeInsets.symmetric(horizontal: 24.0),
						child: Column(
							mainAxisSize: MainAxisSize.min,
							children: [
								// logo / hero
								CircleAvatar(
									radius: 56,
									backgroundColor: colorScheme.primary,
									child: Icon(Icons.school, size: 56, color: colorScheme.onPrimary),
								),
								const SizedBox(height: 20),
								Text(
									'Welcome to StudyCircle',
									style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
									textAlign: TextAlign.center,
								),
								const SizedBox(height: 8),
								Text(
									'Learn, share and grow with peers',
									style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
									textAlign: TextAlign.center,
								),
								const SizedBox(height: 28),
								ConstrainedBox(
									constraints: const BoxConstraints(maxWidth: 420),
									child: SizedBox(
										width: double.infinity,
										child: ElevatedButton(
											onPressed: () => Navigator.of(context).pushNamed(SignupPage.routeName),
											child: const Text('Get Started'),
										),
									),
								),
								const SizedBox(height: 12),
								Row(
									mainAxisSize: MainAxisSize.min,
									children: [
										const Text("Already have an account?"),
										TextButton(
											onPressed: () => Navigator.of(context).pushNamed(SigninPage.routeName),
											child: const Text('Sign in'),
										),
									],
								),
							],
						),
					),
				),
			),
		);
	}
}

