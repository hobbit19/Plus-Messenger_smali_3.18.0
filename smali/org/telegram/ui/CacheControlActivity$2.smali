.class Lorg/telegram/ui/CacheControlActivity$2;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$2;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    const/4 v8, 0x0

    .local v8, "imagesCleared":Z
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    const/4 v12, 0x7

    if-ge v2, v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v12}, Lorg/telegram/ui/CacheControlActivity;->access$1200(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v12

    aget-boolean v12, v12, v2

    if-nez v12, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, -0x1

    .local v11, "type":I
    const/4 v5, 0x0

    .local v5, "documentsMusicType":I
    if-nez v2, :cond_6

    const/4 v11, 0x0

    :cond_2
    :goto_2
    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v7

    .local v7, "file":Ljava/io/File;
    if-eqz v7, :cond_e

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, "array":[Ljava/io/File;
    if-eqz v3, :cond_e

    const/4 v4, 0x0

    .local v4, "b":I
    :goto_3
    array-length v12, v3

    if-ge v4, v12, :cond_e

    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .local v10, "name":Ljava/lang/String;
    const/4 v12, 0x1

    if-eq v5, v12, :cond_3

    const/4 v12, 0x2

    if-ne v5, v12, :cond_d

    :cond_3
    const-string/jumbo v12, ".mp3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, ".m4a"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_4
    const/4 v12, 0x1

    if-ne v5, v12, :cond_d

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v3    # "array":[Ljava/io/File;
    .end local v4    # "b":I
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "name":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x1

    if-ne v2, v12, :cond_7

    const/4 v11, 0x2

    goto :goto_2

    :cond_7
    const/4 v12, 0x2

    if-ne v2, v12, :cond_8

    const/4 v11, 0x3

    const/4 v5, 0x1

    goto :goto_2

    :cond_8
    const/4 v12, 0x3

    if-ne v2, v12, :cond_9

    const/4 v11, 0x3

    const/4 v5, 0x2

    goto :goto_2

    :cond_9
    const/4 v12, 0x4

    if-ne v2, v12, :cond_a

    const/4 v11, 0x1

    goto :goto_2

    :cond_a
    const/4 v12, 0x5

    if-ne v2, v12, :cond_b

    const/4 v11, 0x5

    goto :goto_2

    :cond_b
    const/4 v12, 0x6

    if-ne v2, v12, :cond_2

    const/4 v11, 0x4

    goto :goto_2

    .restart local v3    # "array":[Ljava/io/File;
    .restart local v4    # "b":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x2

    if-eq v5, v12, :cond_5

    :cond_d
    const-string/jumbo v12, ".nomedia"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_5

    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .end local v3    # "array":[Ljava/io/File;
    .end local v4    # "b":I
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_e
    const/4 v12, 0x4

    if-ne v11, v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$002(Lorg/telegram/ui/CacheControlActivity;J)J

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$802(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_10
    const/4 v12, 0x3

    if-ne v11, v12, :cond_12

    const/4 v12, 0x1

    if-ne v5, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$502(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$602(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_12
    if-nez v11, :cond_13

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$302(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_13
    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$402(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_14
    const/4 v12, 0x5

    if-ne v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$702(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    .end local v5    # "documentsMusicType":I
    .end local v7    # "file":Ljava/io/File;
    .end local v11    # "type":I
    :cond_15
    move v9, v8

    .local v9, "imagesClearedFinal":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$000(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$902(Lorg/telegram/ui/CacheControlActivity;J)J

    new-instance v12, Lorg/telegram/ui/CacheControlActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/CacheControlActivity$2$1;-><init>(Lorg/telegram/ui/CacheControlActivity$2;Z)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
