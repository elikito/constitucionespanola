import Navbar from './Navbar';

interface LayoutProps {
  children: React.ReactNode;
}

export default function Layout({ children }: LayoutProps) {
  return (
    <div className="min-h-screen bg-gray-100 flex flex-col">
      <Navbar />
      <main className="flex-grow pb-8 md:pb-0 pt-2">{children}</main>
      
      <footer className="w-full bg-gray-800 text-gray-300 text-xs px-4 py-2 flex justify-between items-center md:fixed md:bottom-0 md:left-0 md:z-40 relative">
        <div className="flex items-center space-x-2">
          <span className="font-mono">v11.29p</span>
          <span className="text-gray-500">•</span>
          <span className="text-gray-400">Elias K</span>
        </div>
        <div className="text-gray-500">
          {new Date().getFullYear()}
        </div>
      </footer>
    </div>
  );
}
