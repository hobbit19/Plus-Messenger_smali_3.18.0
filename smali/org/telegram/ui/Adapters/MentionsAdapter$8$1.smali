.class Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$8;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1502(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v10, v10, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    invoke-static {v7, v6, v8, v9, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v7, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-nez v7, :cond_4

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->cache_time:I

    if-eqz v7, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->next_offset:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1702(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;



    :cond_5
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4


    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7


    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6


    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v7, :cond_7


    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v7, :cond_7


    if-nez v7, :cond_7



    if-eqz v7, :cond_7

    :cond_6
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_7
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->query_id:J


    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7


    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .local v1, "added":Z
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d

    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->gallery:Z

    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2002(Lorg/telegram/ui/Adapters/MentionsAdapter;Z)Z

    :cond_a
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2302(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2402(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2502(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;


    move-result-object v7

    if-eqz v7, :cond_e

    move v2, v5

    .local v2, "hasTop":Z
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_f

    move v7, v5

    :goto_4
    add-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemChanged(I)V

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_10

    move v7, v5

    :goto_5
    add-int/2addr v7, v9

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemRangeInserted(II)V

    .end local v2    # "hasTop":Z
    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;


    move-result-object v8

    if-eqz v8, :cond_c

    :cond_b
    move v6, v5

    :cond_c
    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x1

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    move v2, v6

    goto/16 :goto_3

    .restart local v2    # "hasTop":Z
    :cond_f
    move v7, v6

    goto :goto_4

    :cond_10
    move v7, v6

    goto :goto_5

    .end local v2    # "hasTop":Z
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_6
.end method
