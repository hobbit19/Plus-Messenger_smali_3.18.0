.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .prologue
    .line 660
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$searchId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 664
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$query:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 665
    .local v21, "search1":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_0

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    invoke-static/range {v30 .. v31}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2602(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;I)I

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v30, v0

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2600(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I

    move-result v32

    invoke-static/range {v30 .. v32}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2700(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/ArrayList;I)V

    .line 853
    .end local v21    # "search1":Ljava/lang/String;
    :goto_0
    return-void

    .line 670
    .restart local v21    # "search1":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 671
    .local v22, "search2":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_2

    .line 672
    :cond_1
    const/16 v22, 0x0

    .line 674
    :cond_2
    if-eqz v22, :cond_5

    const/16 v30, 0x1

    :goto_1
    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 675
    .local v20, "search":[Ljava/lang/String;
    const/16 v30, 0x0

    aput-object v21, v20, v30

    .line 676
    if-eqz v22, :cond_3

    .line 677
    const/16 v30, 0x1

    aput-object v22, v20, v30

    .line 680
    :cond_3
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v29, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v6, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .line 684
    .local v19, "resultCount":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 685
    .local v10, "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    const-string/jumbo v31, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 400"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 686
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 687
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    .line 688
    .local v14, "id":J
    new-instance v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert$1;)V

    .line 689
    .local v9, "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v30

    move/from16 v0, v30

    iput v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->date:I

    .line 690
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    long-to-int v0, v14

    move/from16 v16, v0

    .line 693
    .local v16, "lower_id":I
    const/16 v30, 0x20

    shr-long v30, v14, v30

    move-wide/from16 v0, v30

    long-to-int v13, v0

    .line 694
    .local v13, "high_id":I
    if-eqz v16, :cond_4

    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_4

    .line 695
    if-lez v16, :cond_6

    .line 696
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 697
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 850
    .end local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v10    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    .end local v13    # "high_id":I
    .end local v14    # "id":J
    .end local v16    # "lower_id":I
    .end local v19    # "resultCount":I
    .end local v20    # "search":[Ljava/lang/String;
    .end local v21    # "search1":Ljava/lang/String;
    .end local v22    # "search2":Ljava/lang/String;
    .end local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v11

    .line 851
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 674
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v21    # "search1":Ljava/lang/String;
    .restart local v22    # "search2":Ljava/lang/String;
    :cond_5
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 700
    .restart local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .restart local v10    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    .restart local v13    # "high_id":I
    .restart local v14    # "id":J
    .restart local v16    # "lower_id":I
    .restart local v19    # "resultCount":I
    .restart local v20    # "search":[Ljava/lang/String;
    .restart local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v30, v0

    :try_start_1
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 701
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 706
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v13    # "high_id":I
    .end local v14    # "id":J
    .end local v16    # "lower_id":I
    :cond_7
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 708
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_12

    .line 709
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v32, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 710
    :cond_8
    :goto_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_11

    .line 711
    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v17

    .line 712
    .local v17, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 713
    .local v24, "tName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 714
    const/16 v24, 0x0

    .line 716
    :cond_9
    const/16 v27, 0x0

    .line 717
    .local v27, "username":Ljava/lang/String;
    const-string/jumbo v30, ";;;"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    .line 718
    .local v28, "usernamePos":I
    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 719
    add-int/lit8 v30, v28, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 721
    :cond_a
    const/4 v12, 0x0

    .line 722
    .local v12, "found":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v30, 0x0

    :goto_4
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    aget-object v18, v20, v30

    .line 723
    .local v18, "q":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_b

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_b

    if-eqz v24, :cond_e

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_b

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 724
    :cond_b
    const/4 v12, 0x1

    .line 728
    :cond_c
    :goto_5
    if-eqz v12, :cond_10

    .line 729
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 730
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_8

    .line 731
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v26

    .line 732
    .local v26, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 733
    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 734
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    if-eqz v30, :cond_d

    .line 735
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 737
    :cond_d
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_f

    .line 738
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 742
    :goto_6
    move-object/from16 v0, v26

    iput-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 743
    iget-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 744
    add-int/lit8 v19, v19, 0x1

    .line 745
    goto/16 :goto_3

    .line 725
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    if-eqz v27, :cond_c

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 726
    const/4 v12, 0x2

    goto/16 :goto_5

    .line 740
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .restart local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "@"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "@"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_6

    .line 722
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4

    .line 750
    .end local v12    # "found":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "q":Ljava/lang/String;
    .end local v24    # "tName":Ljava/lang/String;
    .end local v27    # "username":Ljava/lang/String;
    .end local v28    # "usernamePos":I
    :cond_11
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 753
    :cond_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_19

    .line 754
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v32, "SELECT data, name FROM chats WHERE uid IN(%s)"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, ","

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 755
    :cond_13
    :goto_7
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_18

    .line 756
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v17

    .line 757
    .restart local v17    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 758
    .restart local v24    # "tName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 759
    const/16 v24, 0x0

    .line 761
    :cond_14
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v4, v0, :cond_13

    .line 762
    aget-object v18, v20, v4

    .line 763
    .restart local v18    # "q":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_15

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_15

    if-eqz v24, :cond_17

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_15

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 764
    :cond_15
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 765
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_13

    .line 766
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 767
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 768
    if-eqz v5, :cond_13

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v30

    if-nez v30, :cond_13

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v30

    if-eqz v30, :cond_16

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move/from16 v30, v0

    if-nez v30, :cond_16

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    move/from16 v30, v0

    if-nez v30, :cond_16

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 769
    :cond_16
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    neg-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 770
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 771
    iput-object v5, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 772
    iget-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v30, v0

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 773
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 761
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 780
    .end local v4    # "a":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "q":Ljava/lang/String;
    .end local v24    # "tName":Ljava/lang/String;
    :cond_18
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 783
    :cond_19
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 784
    .local v23, "searchResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_1a
    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1b

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 785
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    iget-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1a

    iget-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1a

    .line 786
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 790
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    :cond_1b
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    const-string/jumbo v31, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 791
    :cond_1c
    :goto_a
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_25

    .line 792
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v25

    .line 793
    .local v25, "uid":I
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1c

    .line 796
    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v17

    .line 797
    .restart local v17    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 798
    .restart local v24    # "tName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 799
    const/16 v24, 0x0

    .line 801
    :cond_1d
    const/16 v27, 0x0

    .line 802
    .restart local v27    # "username":Ljava/lang/String;
    const-string/jumbo v30, ";;;"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    .line 803
    .restart local v28    # "usernamePos":I
    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_1e

    .line 804
    add-int/lit8 v30, v28, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 806
    :cond_1e
    const/4 v12, 0x0

    .line 807
    .restart local v12    # "found":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v30, 0x0

    :goto_b
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c

    aget-object v18, v20, v30

    .line 808
    .restart local v18    # "q":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1f

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_1f

    if-eqz v24, :cond_22

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1f

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_22

    .line 809
    :cond_1f
    const/4 v12, 0x1

    .line 813
    :cond_20
    :goto_c
    if-eqz v12, :cond_24

    .line 814
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 815
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_1c

    .line 816
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v26

    .line 817
    .restart local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 818
    new-instance v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert$1;)V

    .line 819
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    if-eqz v30, :cond_21

    .line 820
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 822
    :cond_21
    iget-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 823
    move-object/from16 v0, v26

    iput-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 824
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_23

    .line 825
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 829
    :goto_d
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 810
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_22
    if-eqz v27, :cond_20

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_20

    .line 811
    const/4 v12, 0x2

    goto/16 :goto_c

    .line 827
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .restart local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_23
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "@"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "@"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_d

    .line 807
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_24
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_b

    .line 835
    .end local v12    # "found":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "q":Ljava/lang/String;
    .end local v24    # "tName":Ljava/lang/String;
    .end local v25    # "uid":I
    .end local v27    # "username":Ljava/lang/String;
    .end local v28    # "usernamePos":I
    :cond_25
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 837
    new-instance v30, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$searchId:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2700(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
