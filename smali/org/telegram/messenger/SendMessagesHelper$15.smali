.class final Lorg/telegram/messenger/SendMessagesHelper$15;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;JLjava/util/HashMap;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .prologue
    .line 3015
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 3018
    const/16 v19, 0x0

    .line 3019
    .local v19, "finalPath":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3020
    .local v15, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const/16 v22, 0x0

    .line 3021
    .local v22, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    const/16 v20, 0x0

    .line 3022
    .local v20, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;

    if-eqz v4, :cond_5

    .line 3023
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "game"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3024
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_0

    .line 3231
    :goto_0
    return-void

    .line 3027
    :cond_0
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_game;

    .end local v20    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_game;-><init>()V

    .line 3028
    .restart local v20    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    .line 3029
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    .line 3030
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->short_name:Ljava/lang/String;

    .line 3031
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 3032
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_1

    .line 3033
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3034
    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    .line 3210
    :cond_1
    :goto_1
    move-object/from16 v7, v19

    .line 3211
    .local v7, "finalPathFinal":Ljava/lang/String;
    move-object v6, v15

    .line 3212
    .local v6, "finalDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v8, v22

    .line 3213
    .local v8, "finalPhoto":Lorg/telegram/tgnet/TLRPC$TL_photo;
    move-object/from16 v9, v20

    .line 3214
    .local v9, "finalGame":Lorg/telegram/tgnet/TLRPC$TL_game;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3215
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    const-string/jumbo v5, "originalPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3217
    :cond_2
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$15$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$15$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$15;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/tgnet/TLRPC$TL_game;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3036
    .end local v6    # "finalDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v7    # "finalPathFinal":Ljava/lang/String;
    .end local v8    # "finalPhoto":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v9    # "finalGame":Lorg/telegram/tgnet/TLRPC$TL_game;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_4

    .line 3037
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_1

    .line 3038
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_document;

    .restart local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    goto :goto_1

    .line 3040
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_1

    .line 3041
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v4, :cond_1

    .line 3042
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v22, v0

    .end local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v22, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .restart local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    goto :goto_1

    .line 3046
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3047
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v25, "."

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "file"

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3048
    .local v17, "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3049
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 3053
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    :cond_6
    :goto_3
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 3060
    :pswitch_0
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3061
    .restart local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 3062
    const/4 v4, 0x0

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3063
    const/4 v4, 0x0

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 3064
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3065
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 3066
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 3067
    .local v18, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3069
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v25

    sparse-switch v25, :sswitch_data_1

    :cond_7
    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 3174
    :cond_8
    :goto_5
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 3175
    const-string/jumbo v4, "file"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3177
    :cond_9
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 3178
    const-string/jumbo v4, "application/octet-stream"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3180
    :cond_a
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_1

    .line 3181
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3182
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 3183
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 3184
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v5, 0x0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3185
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3186
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "x"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 3051
    .end local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_2

    .line 3053
    :sswitch_0
    const-string/jumbo v25, "audio"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string/jumbo v25, "voice"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string/jumbo v25, "file"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x2

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v25, "video"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x3

    goto/16 :goto_3

    :sswitch_4
    const-string/jumbo v25, "sticker"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x4

    goto/16 :goto_3

    :sswitch_5
    const-string/jumbo v25, "gif"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x5

    goto/16 :goto_3

    :sswitch_6
    const-string/jumbo v25, "photo"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x6

    goto/16 :goto_3

    .line 3069
    .restart local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :sswitch_7
    const-string/jumbo v25, "gif"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x0

    goto/16 :goto_4

    :sswitch_8
    const-string/jumbo v25, "voice"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v25, "audio"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x2

    goto/16 :goto_4

    :sswitch_a
    const-string/jumbo v25, "file"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x3

    goto/16 :goto_4

    :sswitch_b
    const-string/jumbo v25, "video"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x4

    goto/16 :goto_4

    :sswitch_c
    const-string/jumbo v25, "sticker"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_4

    .line 3071
    :pswitch_1
    const-string/jumbo v4, "animation.gif"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3072
    const-string/jumbo v4, "mp4"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3073
    const-string/jumbo v4, "video/mp4"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3074
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3080
    :goto_6
    :try_start_0
    const-string/jumbo v4, "mp4"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3081
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3085
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    :goto_7
    if-eqz v14, :cond_8

    .line 3086
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v25, 0x37

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3087
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 3089
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v16

    .line 3090
    .local v16, "e":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 3076
    .end local v16    # "e":Ljava/lang/Throwable;
    :cond_c
    const-string/jumbo v4, "image/gif"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto :goto_6

    .line 3083
    :cond_d
    const/4 v4, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v25, 0x42b40000    # 90.0f

    const/16 v26, 0x1

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v4, v5, v1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7

    .line 3095
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 3096
    .local v13, "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 3097
    const/4 v4, 0x1

    iput-boolean v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 3098
    const-string/jumbo v4, "audio.ogg"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3099
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3101
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3102
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_5

    .line 3107
    .end local v13    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :pswitch_3
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 3108
    .restart local v13    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 3109
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    iput-object v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 3110
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3111
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 3112
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    iput-object v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 3113
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3115
    :cond_e
    const-string/jumbo v4, "audio.mp3"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3116
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3119
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_5

    .line 3124
    .end local v13    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 3125
    .local v21, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_f

    .line 3126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    goto/16 :goto_5

    .line 3128
    :cond_f
    const-string/jumbo v4, "file"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    goto/16 :goto_5

    .line 3133
    .end local v21    # "idx":I
    :pswitch_5
    const-string/jumbo v4, "video.mp4"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3134
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 3135
    .local v12, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3136
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3137
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3138
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3140
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "jpg"

    invoke-static/range {v26 .. v27}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    .line 3141
    .local v24, "thumbPath":Ljava/lang/String;
    const/4 v4, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v25, 0x42b40000    # 90.0f

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v4, v5, v1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3142
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    .line 3143
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v25, 0x37

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3144
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 3146
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "thumbPath":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 3147
    .restart local v16    # "e":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 3152
    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v16    # "e":Ljava/lang/Throwable;
    :pswitch_6
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 3153
    .local v11, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    const-string/jumbo v4, ""

    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    .line 3154
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 3155
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3156
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 3157
    .local v10, "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iput v4, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    .line 3158
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    iput v4, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    .line 3159
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3160
    const-string/jumbo v4, "sticker.webp"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3162
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "webp"

    invoke-static/range {v26 .. v27}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    .line 3163
    .restart local v24    # "thumbPath":Ljava/lang/String;
    const/4 v4, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v25, 0x42b40000    # 90.0f

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v4, v5, v1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3164
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    .line 3165
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v25, 0x37

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3166
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 3168
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "thumbPath":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 3169
    .restart local v16    # "e":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 3191
    .end local v10    # "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    .end local v11    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    .end local v16    # "e":Ljava/lang/Throwable;
    .end local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :pswitch_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3192
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v22

    .line 3194
    :cond_10
    if-nez v22, :cond_1

    .line 3195
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 3196
    .restart local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 3197
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 3198
    .local v23, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 3199
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 3200
    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 3201
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3202
    const-string/jumbo v4, "x"

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 3203
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3053
    :sswitch_data_0
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_4
        0x18fc4 -> :sswitch_5
        0x2ff57c -> :sswitch_2
        0x58d9bd6 -> :sswitch_0
        0x65b3e32 -> :sswitch_6
        0x6b0147b -> :sswitch_3
        0x6b2e132 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 3069
    :sswitch_data_1
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_c
        0x18fc4 -> :sswitch_7
        0x2ff57c -> :sswitch_a
        0x58d9bd6 -> :sswitch_9
        0x6b0147b -> :sswitch_b
        0x6b2e132 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
