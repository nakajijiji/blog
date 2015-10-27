echo "hugo -t nakaji"
hugo -t nakaji
echo "enter into public"
cd public
echo "push to repository"
git add -A
git commit -m "new post is created"
git push origin master
cd ../ 
echo "deploy succeeded"
