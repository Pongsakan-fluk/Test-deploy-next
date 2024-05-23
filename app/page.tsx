import Counter from "./counter";

export const metadata = {
  title: "App Router",
};

export default function Page() {
  return (
    <>
      <h1>Test deploy Next.js by Docker and Kubernetes</h1>
      <Counter />
    </>
  );
}
