import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "OfferTrack · 校招进度看板",
  description: "记录投递、招聘进度、待办与面试复盘的个人求职工作台。",
  icons: {
    icon: "/favicon.svg",
    shortcut: "/favicon.svg",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="zh-CN">
      <body className="antialiased">{children}</body>
    </html>
  );
}

