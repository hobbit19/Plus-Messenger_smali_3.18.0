.class Lorg/telegram/messenger/camera/CameraController$7;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

.field final synthetic val$camera:Landroid/hardware/Camera;

.field final synthetic val$info:Lorg/telegram/messenger/camera/CameraInfo;

.field final synthetic val$onVideoStartRecord:Ljava/lang/Runnable;

.field final synthetic val$path:Ljava/io/File;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;

.field final synthetic val$smallVideo:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 450
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-boolean p4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$smallVideo:Z

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$path:Ljava/io/File;

    iput-object p6, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object p7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$callback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    iput-object p8, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$onVideoStartRecord:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 454
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 456
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 457
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "torch"

    :goto_0
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 458
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 465
    :try_start_3
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-boolean v4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$smallVideo:Z

    invoke-static {v3, v4}, Lorg/telegram/messenger/camera/CameraController;->access$202(Lorg/telegram/messenger/camera/CameraController;Z)Z

    .line 467
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v3, v4}, Lorg/telegram/messenger/camera/CameraController;->access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 468
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 469
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 470
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 471
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v5}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/camera/CameraSession;->configureRecorder(ILandroid/media/MediaRecorder;)V

    .line 472
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$path:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 473
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    const-wide/32 v4, 0x40000000

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 474
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 475
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 477
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$200(Lorg/telegram/messenger/camera/CameraController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    new-instance v2, Lorg/telegram/messenger/camera/Size;

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 479
    .local v2, "pictureSize":Lorg/telegram/messenger/camera/Size;
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v3

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    .line 480
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    const v4, 0xdbba0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 486
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 487
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 488
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 489
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 491
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$callback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    invoke-static {v3, v4}, Lorg/telegram/messenger/camera/CameraController;->access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    .line 492
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$path:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/camera/CameraController;->access$502(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$onVideoStartRecord:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$onVideoStartRecord:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 505
    .end local v2    # "pictureSize":Lorg/telegram/messenger/camera/Size;
    :cond_0
    :goto_3
    return-void

    .line 457
    .restart local v1    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_4
    const-string/jumbo v3, "off"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 459
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 502
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 503
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_6
    new-instance v2, Lorg/telegram/messenger/camera/Size;

    const/16 v3, 0x10

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 483
    .restart local v2    # "pictureSize":Lorg/telegram/messenger/camera/Size;
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v3

    const/16 v4, 0x2d0

    const/16 v5, 0x1e0

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    .line 484
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    const v4, 0x1b7740

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 496
    .end local v2    # "pictureSize":Lorg/telegram/messenger/camera/Size;
    :catch_2
    move-exception v0

    .line 497
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 498
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/messenger/camera/CameraController;->access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 499
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3
.end method
