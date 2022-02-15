export const Foods = ({ match }) => {
  return (
    <>
      <h1>フード一覧</h1>
      <p>restaurantsIdは{match.params.restaurantsId}です</p>
    </>
  );
};
