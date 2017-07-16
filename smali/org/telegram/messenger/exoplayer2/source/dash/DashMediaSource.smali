.class public final Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_FIXED_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_PREFER_MANIFEST_MS:J = -0x1L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final NOTIFY_MANIFEST_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

.field private dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private elapsedRealtimeOffsetMs:J

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private final livePresentationDelayMs:J

.field private loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private loaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private manifestLoadEndTimestamp:J

.field private manifestLoadStartTimestamp:J

.field private final manifestParser:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private final minLoadableRetryCount:I

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 11
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "livePresentationDelayMs"    # J
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 10
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 12
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "manifestParser"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;
    .param p4, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "livePresentationDelayMs"    # J
    .param p8, "eventHandler"    # Landroid/os/Handler;
    .param p9, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 5
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "manifestUri"    # Landroid/net/Uri;
    .param p3, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p4, "manifestParser"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;
    .param p5, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p6, "minLoadableRetryCount"    # I
    .param p7, "livePresentationDelayMs"    # J
    .param p9, "eventHandler"    # Landroid/os/Handler;
    .param p10, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    iput p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p9, p10}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    invoke-direct {v0, p0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$ManifestCallback;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$2;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    goto :goto_2
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 12
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 6
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private getNowUnixTimeUs()J
    .locals 4

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    const-string/jumbo v0, "DashMediaSource"

    const-string/jumbo v1, "Failed to resolve UtcTiming element."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .locals 1
    .param p1, "elapsedRealtimeOffsetMs"    # J

    .prologue
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private processManifest(Z)V
    .locals 40
    .param p1, "scheduleRefresh"    # Z

    .prologue
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .local v21, "id":I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move/from16 v0, v21

    if-lt v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v9, v21, v9

    invoke-virtual {v5, v6, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V

    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .end local v21    # "id":I
    :cond_1
    const/16 v31, 0x0

    .local v31, "windowChangingImplicitly":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    add-int/lit8 v22, v5, -0x1

    .local v22, "lastPeriodIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;J)Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v17

    .local v17, "firstPeriodSeekInfo":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;J)Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v23

    .local v23, "lastPeriodSeekInfo":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    move-object/from16 v0, v17

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .local v10, "currentStartTimeUs":J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    move-wide/from16 v18, v0

    .local v18, "currentEndTimeUs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, v23

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    if-nez v5, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->getNowUnixTimeUs()J

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v38

    sub-long v24, v36, v38

    .local v24, "liveStreamDurationUs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v36

    sub-long v26, v24, v36

    .local v26, "liveStreamEndPositionInLastPeriodUs":J
    move-wide/from16 v0, v26

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-wide/from16 v36, v0

    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v36, v38

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v34

    .local v34, "timeShiftBufferDepthUs":J
    sub-long v28, v18, v34

    .local v28, "offsetInPeriodUs":J
    move/from16 v30, v22

    .local v30, "periodIndex":I
    :goto_1
    const-wide/16 v36, 0x0

    cmp-long v5, v28, v36

    if-gez v5, :cond_2

    if-lez v30, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    add-long v28, v28, v36

    goto :goto_1

    :cond_2
    if-nez v30, :cond_5

    move-wide/from16 v0, v28

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .end local v28    # "offsetInPeriodUs":J
    .end local v30    # "periodIndex":I
    .end local v34    # "timeShiftBufferDepthUs":J
    :cond_3
    :goto_2
    const/16 v31, 0x1

    .end local v24    # "liveStreamDurationUs":J
    .end local v26    # "liveStreamEndPositionInLastPeriodUs":J
    :cond_4
    sub-long v12, v18, v10

    .local v12, "windowDurationUs":J
    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v20

    if-ge v0, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v36

    add-long v12, v12, v36

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .end local v12    # "windowDurationUs":J
    .restart local v24    # "liveStreamDurationUs":J
    .restart local v26    # "liveStreamEndPositionInLastPeriodUs":J
    .restart local v28    # "offsetInPeriodUs":J
    .restart local v30    # "periodIndex":I
    .restart local v34    # "timeShiftBufferDepthUs":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v10

    goto :goto_2

    .end local v24    # "liveStreamDurationUs":J
    .end local v26    # "liveStreamEndPositionInLastPeriodUs":J
    .end local v28    # "offsetInPeriodUs":J
    .end local v30    # "periodIndex":I
    .end local v34    # "timeShiftBufferDepthUs":J
    .restart local v12    # "windowDurationUs":J
    :cond_6
    const-wide/16 v14, 0x0

    .local v14, "windowDefaultStartPositionUs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    move-wide/from16 v32, v0

    .local v32, "presentationDelayForManifestMs":J
    const-wide/16 v36, -0x1

    cmp-long v5, v32, v36

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-wide/from16 v36, v0

    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v36, v38

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-wide/from16 v32, v0

    :cond_7
    :goto_4
    invoke-static/range {v32 .. v33}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v36

    sub-long v14, v12, v36

    const-wide/32 v36, 0x4c4b40

    cmp-long v5, v14, v36

    if-gez v5, :cond_8

    const-wide/32 v36, 0x4c4b40

    const-wide/16 v38, 0x2

    div-long v38, v12, v38

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .end local v32    # "presentationDelayForManifestMs":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v0, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v38, v0

    add-long v36, v36, v38

    invoke-static {v10, v11}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v38

    add-long v7, v36, v38

    .local v7, "windowStartTimeMs":J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v5, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v16, v0


    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;


    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v31, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v36, 0x1388

    move-wide/from16 v0, v36

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh()V

    :cond_a
    return-void

    .end local v7    # "windowStartTimeMs":J
    .restart local v32    # "presentationDelayForManifestMs":J
    :cond_b
    const-wide/16 v32, 0x7530

    goto :goto_4
.end method

.method private resolveUtcTimingElement(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 3
    .param p1, "timingElement"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unsupported UTC timing scheme"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveUtcTimingElementDirect(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 6
    .param p1, "timingElement"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    .prologue
    :try_start_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "utcTimestamp":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    sub-long v4, v2, v4

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "utcTimestamp":J
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/telegram/messenger/exoplayer2/ParserException;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveUtcTimingElementHttp(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 4
    .param p1, "timingElement"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "parser":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser<Ljava/lang/Long;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)V

    return-void
.end method

.method private scheduleManifestRefresh()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v6, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    .local v2, "minUpdatePeriod":J
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    const-wide/16 v2, 0x1388

    :cond_1
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    add-long v4, v6, v2

    .local v4, "nextLoadTimestamp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v4, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .local v0, "delayUntilNextLoad":J
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startLoading(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)V
    .locals 5
    .param p3, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;"
    .local p2, "callback":Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback<Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;>;"
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v0

    .local v0, "elapsedRealtimeMs":J
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJ)V

    return-void
.end method

.method private startLoadingManifest()V
    .locals 5

    .prologue
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .local v0, "manifestUri":Landroid/net/Uri;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)V

    return-void

    .end local v0    # "manifestUri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 12
    .param p1, "periodIndex"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->copyWithMediaTimeOffsetMs(J)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v7

    .local v7, "periodEventDispatcher":Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v2, v0, p1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    move v4, p1

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;ILorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    .local v1, "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v1, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<*>;JJ)V"
        }
    .end annotation

    .prologue
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<*>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method onManifestLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 18
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .local v4, "newManifest":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    if-nez v5, :cond_0

    const/16 v16, 0x0

    .local v16, "periodCount":I
    :goto_0
    const/16 v17, 0x0

    .local v17, "removedPeriodCount":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v14, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    .local v14, "newFirstPeriodStartTimeMs":J
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v6, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v5, v6, v14

    if-gez v5, :cond_1

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .end local v14    # "newFirstPeriodStartTimeMs":J
    .end local v16    # "periodCount":I
    .end local v17    # "removedPeriodCount":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v16

    goto :goto_0

    .restart local v14    # "newFirstPeriodStartTimeMs":J
    .restart local v16    # "periodCount":I
    .restart local v17    # "removedPeriodCount":I
    :cond_1
    sub-int v5, v16, v17

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v6

    if-le v5, v6, :cond_2

    const-string/jumbo v5, "DashMediaSource"

    const-string/jumbo v6, "Out of sync manifest"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh()V

    :goto_2
    return-void

    :cond_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    sub-long v6, p2, p4

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v5, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElement(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_2
.end method

.method onManifestLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    .local v13, "isFatal":Z
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onUtcTimestampLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method onUtcTimestampLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    const/4 v13, 0x1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    const/4 v2, 0x2

    return v2
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:DashMediaSource"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    goto :goto_0
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;

    .local v0, "dashMediaPeriod":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->release()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public releaseSource()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    :cond_0
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    :cond_1
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public replaceManifestUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "manifestUri"    # Landroid/net/Uri;

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
