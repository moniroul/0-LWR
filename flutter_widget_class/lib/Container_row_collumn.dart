import 'package:flutter/material.dart';

class Container_row_collumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 18, 18), width: 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3), blurRadius: 50),
                  ]),
              child: Center(
                  child: Text(
                "Container Row and Column",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 18, 18), width: 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3), blurRadius: 50),
                  ]),
              child: Center(
                  child: Text(
                "Container Row and Column",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 18, 18), width: 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3), blurRadius: 50),
                  ]),
              child: Center(
                  child: Text(
                "Container Row and Column",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 18, 18), width: 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3), blurRadius: 50),
                  ]),
              child: Center(
                  child: Text(
                "Container Row and Column",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 18, 18),
                            width: 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 50),
                        ]),
                    child: Center(
                        child: Text(
                      "Container Row and Column",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
