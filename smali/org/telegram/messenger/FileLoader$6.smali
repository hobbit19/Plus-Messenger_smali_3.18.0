.class Lorg/telegram/messenger/FileLoader$6;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$force:Z

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$locationExt:Ljava/lang/String;

.field final synthetic val$locationSize:I

.field final synthetic val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZIZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p5, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iput-boolean p6, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    iput p7, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    iput-boolean p8, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, "fileName":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_2

    .line 371
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v11, "-2147483648"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 534
    :cond_1
    :goto_1
    return-void

    .line 372
    :cond_2
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_3

    .line 373
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 374
    :cond_3
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_0

    .line 375
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 382
    :cond_4
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation;

    .line 383
    .local v7, "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v7, :cond_9

    .line 384
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_1

    .line 385
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    .line 387
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 388
    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .line 394
    .local v0, "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :goto_2
    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 396
    .local v5, "index":I
    if-lez v5, :cond_1

    .line 397
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 398
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 389
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    .end local v5    # "index":I
    :cond_6
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v11, :cond_7

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 390
    :cond_7
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_2

    .line 392
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_8
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_2

    .line 405
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_9
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    .line 406
    .local v9, "tempDir":Ljava/io/File;
    move-object v8, v9

    .line 407
    .local v8, "storeDir":Ljava/io/File;
    const/4 v10, 0x4

    .line 409
    .local v10, "type":I
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_c

    .line 410
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iget v13, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    invoke-direct {v7, v11, v12, v13}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V

    .line 411
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    const/4 v10, 0x0

    .line 433
    :cond_a
    :goto_3
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    if-nez v11, :cond_b

    .line 434
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v11, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    .line 436
    :cond_b
    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->setPaths(Ljava/io/File;Ljava/io/File;)V

    .line 438
    move-object v3, v2

    .line 439
    .local v3, "finalFileName":Ljava/lang/String;
    move v4, v10

    .line 440
    .local v4, "finalType":I
    new-instance v1, Lorg/telegram/messenger/FileLoader$6$1;

    invoke-direct {v1, p0, v3, v4}, Lorg/telegram/messenger/FileLoader$6$1;-><init>(Lorg/telegram/messenger/FileLoader$6;Ljava/lang/String;I)V

    .line 464
    .local v1, "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    invoke-virtual {v7, v1}, Lorg/telegram/messenger/FileLoadOperation;->setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V

    .line 495
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_13

    const/4 v6, 0x3

    .line 497
    .local v6, "maxCount":I
    :goto_4
    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    .line 498
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_14

    .line 499
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 500
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1108(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    .line 412
    .end local v1    # "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .end local v3    # "finalFileName":Ljava/lang/String;
    .end local v4    # "finalType":I
    .end local v6    # "maxCount":I
    :cond_c
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_f

    .line 413
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 414
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 415
    const/4 v10, 0x1

    goto :goto_3

    .line 416
    :cond_d
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 417
    const/4 v10, 0x2

    goto :goto_3

    .line 419
    :cond_e
    const/4 v10, 0x3

    goto :goto_3

    .line 421
    :cond_f
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_a

    .line 422
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V

    .line 423
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 424
    const/4 v10, 0x1

    goto :goto_3

    .line 425
    :cond_10
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 426
    const/4 v10, 0x2

    goto :goto_3

    .line 427
    :cond_11
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 428
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 430
    :cond_12
    const/4 v10, 0x3

    goto/16 :goto_3

    .line 496
    .restart local v1    # "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .restart local v3    # "finalFileName":Ljava/lang/String;
    .restart local v4    # "finalType":I
    :cond_13
    const/4 v6, 0x1

    goto :goto_4

    .line 503
    .restart local v6    # "maxCount":I
    :cond_14
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_15

    .line 504
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 506
    :cond_15
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 509
    :cond_16
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_19

    .line 510
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1300(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_17

    .line 511
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 512
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1308(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    .line 515
    :cond_17
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_18

    .line 516
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 518
    :cond_18
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 522
    :cond_19
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_1a

    .line 523
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 524
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    .line 527
    :cond_1a
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_1b

    .line 528
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 530
    :cond_1b
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
