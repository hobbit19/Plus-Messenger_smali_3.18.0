.class final Lorg/telegram/messenger/SendMessagesHelper$15;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;



# direct methods
    .locals 0

    .prologue

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
    const/16 v19, 0x0

    .local v19, "finalPath":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const/16 v22, 0x0

    .local v22, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    const/16 v20, 0x0

    .local v20, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    move-object/from16 v0, p0



    if-eqz v4, :cond_5

    move-object/from16 v0, p0



    const-string/jumbo v5, "game"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_game;

    .end local v20    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_game;-><init>()V

    .restart local v20    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    move-object/from16 v0, p0



    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    move-object/from16 v0, p0



    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    move-object/from16 v0, p0



    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->short_name:Ljava/lang/String;

    move-object/from16 v0, p0



    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p0



    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0



    move-object/from16 v0, v20

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    :cond_1
    :goto_1
    move-object/from16 v7, v19

    .local v7, "finalPathFinal":Ljava/lang/String;
    move-object v6, v15

    .local v6, "finalDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v8, v22

    .local v8, "finalPhoto":Lorg/telegram/tgnet/TLRPC$TL_photo;
    move-object/from16 v9, v20

    .local v9, "finalGame":Lorg/telegram/tgnet/TLRPC$TL_game;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0



    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    const-string/jumbo v5, "originalPath"

    move-object/from16 v0, p0


    move-object/from16 v25, v0

    move-object/from16 v0, v25


    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$15$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$15$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$15;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/tgnet/TLRPC$TL_game;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v6    # "finalDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v7    # "finalPathFinal":Ljava/lang/String;
    .end local v8    # "finalPhoto":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v9    # "finalGame":Lorg/telegram/tgnet/TLRPC$TL_game;
    :cond_3
    move-object/from16 v0, p0



    if-eqz v4, :cond_4

    move-object/from16 v0, p0



    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0



    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_document;

    .restart local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    goto :goto_1

    :cond_4
    move-object/from16 v0, p0



    if-eqz v4, :cond_1

    move-object/from16 v0, p0



    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0



    move-object/from16 v22, v0

    .end local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v22, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .restart local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    goto :goto_1

    :cond_5
    move-object/from16 v0, p0



    if-eqz v4, :cond_1

    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0


    move-object/from16 v25, v0

    move-object/from16 v0, v25


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


    move-object/from16 v25, v0

    move-object/from16 v0, v25


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

    .local v17, "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v0, p0



    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    :cond_6
    :goto_3
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .restart local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    const/4 v4, 0x0

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    const/4 v4, 0x0

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    move-object/from16 v0, p0



    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .local v18, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0



    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v25

    sparse-switch v25, :sswitch_data_1

    :cond_7
    :goto_4
    packed-switch v4, :pswitch_data_1

    :cond_8
    :goto_5
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    if-nez v4, :cond_9

    const-string/jumbo v4, "file"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    :cond_9
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_a

    const-string/jumbo v4, "application/octet-stream"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    :cond_a
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_1

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p0



    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p0



    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v5, 0x0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "x"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    .end local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_b
    move-object/from16 v0, p0



    move-object/from16 v19, v0

    goto/16 :goto_2

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

    :pswitch_1
    const-string/jumbo v4, "animation.gif"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    const-string/jumbo v4, "mp4"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "video/mp4"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    :try_start_0
    const-string/jumbo v4, "mp4"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .local v14, "bitmap":Landroid/graphics/Bitmap;
    :goto_7
    if-eqz v14, :cond_8

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v25, 0x37

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v16    # "e":Ljava/lang/Throwable;
    :cond_c
    const-string/jumbo v4, "image/gif"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto :goto_6

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

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .local v13, "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, p0



    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    const/4 v4, 0x1

    iput-boolean v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    const-string/jumbo v4, "audio.ogg"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_5

    .end local v13    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :pswitch_3
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .restart local v13    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, p0



    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    move-object/from16 v0, p0



    iput-object v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    move-object/from16 v0, p0



    if-eqz v4, :cond_e

    move-object/from16 v0, p0



    iput-object v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    :cond_e
    const-string/jumbo v4, "audio.mp3"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_5

    .end local v13    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :pswitch_4
    move-object/from16 v0, p0



    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .local v21, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0



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

    :cond_f
    const-string/jumbo v4, "file"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    goto/16 :goto_5

    .end local v21    # "idx":I
    :pswitch_5
    const-string/jumbo v4, "video.mp4"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .local v12, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    move-object/from16 v0, p0



    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    move-object/from16 v0, p0



    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    move-object/from16 v0, p0



    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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


    move-object/from16 v26, v0

    move-object/from16 v0, v26


    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0


    move-object/from16 v26, v0

    move-object/from16 v0, v26


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

    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v25, 0x37

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "thumbPath":Ljava/lang/String;
    :catch_1
    move-exception v16

    .restart local v16    # "e":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v16    # "e":Ljava/lang/Throwable;
    :pswitch_6
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .local v11, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    const-string/jumbo v4, ""

    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .local v10, "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    move-object/from16 v0, p0



    iput v4, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    move-object/from16 v0, p0



    iput v4, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "sticker.webp"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

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


    move-object/from16 v26, v0

    move-object/from16 v0, v26


    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0


    move-object/from16 v26, v0

    move-object/from16 v0, v26


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

    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v25, 0x37

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "thumbPath":Ljava/lang/String;
    :catch_2
    move-exception v16

    .restart local v16    # "e":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v10    # "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    .end local v11    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    .end local v16    # "e":Ljava/lang/Throwable;
    .end local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :pswitch_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v22

    :cond_10
    if-nez v22, :cond_1

    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .restart local v22    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .local v23, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    move-object/from16 v0, p0



    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    move-object/from16 v0, p0



    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v4, "x"

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

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
