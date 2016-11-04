#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
typedef struct node{
	int num;
	char *name;
	int * next;
}node_t,*p_node_t;
/**init*/
int init_node_l()
{
	node_t node_1;	
//	p_node_t node_1 = NULL;
	//node_1 = malloc(sizeof(struct node));
//	if(!node_1)
	// return 1;
	node_1.num = 1;
	node_1.name = "one";
	printf("node_1:num:name\n",node_1.num,node_1.name);
//	free(node_1);
	return 0;	
}
void main()
{

	int ret;
//	ret = init_node_l();
//	if(ret)
//	printf("error");
	node_t node_1;
  //      p_node_t node_1 = NULL;
          //node_1 = malloc(sizeof(struct node));
  //      if(!node_1)
          // return 1;
         node_1.num = 1;
          node_1.name = "one";
         printf("node_1:num,name\n",node_1.num,node_1.name);	
}
