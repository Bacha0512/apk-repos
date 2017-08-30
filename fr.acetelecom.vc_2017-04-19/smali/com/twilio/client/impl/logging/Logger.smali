.class public final Lcom/twilio/client/impl/logging/Logger;
.super Ljava/lang/Object;


# static fields
.field public static final INHERIT:I = 0x8

.field private static globalLevel:I

.field private static final loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/twilio/client/impl/logging/Logger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private level:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/logging/Logger;->loggers:Ljava/util/Map;

    const/4 v0, 0x6

    sput v0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    iput-object p1, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    sget v0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    return v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/twilio/client/impl/logging/Logger;"
        }
    .end annotation

    sget-object v0, Lcom/twilio/client/impl/logging/Logger;->loggers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/twilio/client/impl/logging/Logger;->loggers:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/logging/Logger;->loggers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/logging/Logger;->loggers:Ljava/util/Map;

    new-instance v2, Lcom/twilio/client/impl/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twilio/client/impl/logging/Logger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/logging/Logger;->loggers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/logging/Logger;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setLogLevel(I)V
    .locals 0

    sput p0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 3

    const/4 v2, 0x3

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget v0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isErrorEnabled()Z
    .locals 3

    const/4 v2, 0x6

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget v0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInfoEnabled()Z
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget v0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerboseEnabled()Z
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget v0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWarnEnabled()Z
    .locals 3

    const/4 v2, 0x5

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget v0, Lcom/twilio/client/impl/logging/Logger;->globalLevel:I

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/logging/Logger;->level:I

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isVerboseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isVerboseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/logging/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/logging/Logger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
