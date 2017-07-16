.class public final Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;

.field private final defaultUrl:Ljava/lang/String;

.field private final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    sget-object v0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "text/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    const-string/jumbo v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 1
    .param p1, "defaultUrl"    # Ljava/lang/String;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/Map;)V
    .locals 0
    .param p1, "defaultUrl"    # Ljava/lang/String;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "keyRequestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->defaultUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    return-void
.end method

.method private executePost(Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    .local v0, "dataSource":Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .local v13, "requestProperty":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v13    # "requestProperty":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .local v1, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v12, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;

    invoke-direct {v12, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .local v12, "inputStream":Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;
    :try_start_0
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    throw v2
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "request"    # Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->defaultUrl:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/octet-stream"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/telegram/messenger/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v2

    return-object v2
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "request"    # Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&signedRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v1

    return-object v1
.end method
