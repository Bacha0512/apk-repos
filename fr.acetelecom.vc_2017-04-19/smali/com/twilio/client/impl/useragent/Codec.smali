.class public Lcom/twilio/client/impl/useragent/Codec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/useragent/Codec$Priority;
    }
.end annotation


# static fields
.field private static volatile codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/useragent/Codec;",
            ">;"
        }
    .end annotation
.end field

.field private static codecsLock:Ljava/lang/Object;

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private codecId:Ljava/lang/String;

.field private codecIdPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/useragent/Codec;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec;->codecsLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final ensureCodecs()V
    .locals 4

    sget-object v0, Lcom/twilio/client/impl/useragent/Codec;->codecs:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec;->codecsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/useragent/Codec;->codecs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/twilio/client/impl/useragent/Codec;->initCodecs()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/useragent/Codec;->codecs:Ljava/util/List;
    :try_end_1
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/twilio/client/impl/useragent/Codec;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v3, "Internal error enumerating codecs"

    invoke-virtual {v2, v3, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static get(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/useragent/Codec;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/twilio/client/impl/useragent/Codec;->ensureCodecs()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/twilio/client/impl/useragent/Codec;->codecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Codec;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Codec;->getCodecId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/useragent/Codec;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/twilio/client/impl/useragent/Codec;->ensureCodecs()V

    sget-object v0, Lcom/twilio/client/impl/useragent/Codec;->codecs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private native getPriority(Ljava/lang/String;)Lcom/twilio/client/impl/useragent/Codec$Priority;
.end method

.method private static native initCodecs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/useragent/Codec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native setPriority(Lcom/twilio/client/impl/useragent/Codec$Priority;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public static setPriorityByPrefix(Ljava/lang/String;Lcom/twilio/client/impl/useragent/Codec$Priority;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    invoke-static {p0}, Lcom/twilio/client/impl/useragent/Codec;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Codec;

    invoke-virtual {v0, p1}, Lcom/twilio/client/impl/useragent/Codec;->setPriority(Lcom/twilio/client/impl/useragent/Codec$Priority;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCodecId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Codec;->codecId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/twilio/client/impl/useragent/Codec$Priority;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Codec;->codecId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Codec;->getPriority(Ljava/lang/String;)Lcom/twilio/client/impl/useragent/Codec$Priority;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Lcom/twilio/client/impl/useragent/Codec$Priority;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Codec;->codecId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/useragent/Codec;->setPriority(Lcom/twilio/client/impl/useragent/Codec$Priority;Ljava/lang/String;)V

    return-void
.end method
