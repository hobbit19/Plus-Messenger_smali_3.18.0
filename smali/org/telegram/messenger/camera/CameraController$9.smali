.class Lorg/telegram/messenger/camera/CameraController$9;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$abandon:Z

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$abandon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v6, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .local v3, "info":Lorg/telegram/messenger/camera/CameraInfo;
    iget-object v1, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .local v1, "camera":Landroid/hardware/Camera;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v5

    .local v5, "tempRecorder":Landroid/media/MediaRecorder;
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/telegram/messenger/camera/CameraController;->access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    :try_start_4
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .end local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :cond_0
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .local v4, "params":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v6, "off"

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v4    # "params":Landroid/hardware/Camera$Parameters;
    :goto_4
    :try_start_6
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$600(Lorg/telegram/messenger/camera/CameraController;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/camera/CameraController$9$1;

    invoke-direct {v7, p0, v1}, Lorg/telegram/messenger/camera/CameraController$9$1;-><init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/hardware/Camera;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-boolean v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$abandon:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$200(Lorg/telegram/messenger/camera/CameraController;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$500(Lorg/telegram/messenger/camera/CameraController;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v6, Lorg/telegram/messenger/camera/CameraController$9$2;

    invoke-direct {v6, p0, v0}, Lorg/telegram/messenger/camera/CameraController$9$2;-><init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/graphics/Bitmap;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    :goto_5
    return-void

    .restart local v1    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    .restart local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    .end local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    .restart local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/telegram/messenger/camera/CameraController;->access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5
.end method
