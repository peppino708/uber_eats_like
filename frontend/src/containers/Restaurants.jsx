import { useEffect } from "react";
import { fetchRestaurants } from "../apis/restaurants";
export const Restaurants = () => {
  useEffect(() => {
    fetchRestaurants().then((data) => console.log(data));
  }, []);
  return (
    <>
      <h1>レストラン一覧</h1>
    </>
  );
};
