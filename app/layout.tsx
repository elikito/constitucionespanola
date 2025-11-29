import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "Constitución Española 1978",
  description: "Herramienta de consulta rápida y ligera de la Constitución Española de 1978. Busca artículos, navega por títulos y capítulos, y accede al texto oficial del BOE.",
  keywords: ["constitución española", "constitución 1978", "BOE", "derechos fundamentales", "artículos constitución"],
  authors: [{ name: "Constitución Española" }],
  openGraph: {
    title: "Constitución Española 1978",
    description: "Herramienta de consulta rápida y ligera de la Constitución Española",
    type: "website",
    locale: "es_ES",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="es">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased`}
      >
        {children}
      </body>
    </html>
  );
}

