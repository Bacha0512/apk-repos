.class public Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
.super Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.source "IronSourceLoggerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/logger/LogListener;


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;


# instance fields
.field private mIsDebugEnabled:Z

.field private mLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/logger/IronSourceLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 23
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->initSubLoggers()V

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "debugLevel"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->initSubLoggers()V

    .line 30
    return-void
.end method

.method private findLoggerByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "result":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 132
    .local v0, "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    move-object v1, v0

    .line 137
    .end local v0    # "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .locals 3

    .prologue
    .line 47
    const-class v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-class v2, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .locals 3
    .param p0, "debugLevel"    # I

    .prologue
    .line 64
    const-class v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-class v2, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 70
    :goto_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iput p0, v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mDebugLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSubLoggers()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/ConsoleLogger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/logger/ConsoleLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method


# virtual methods
.method public addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V
    .locals 1
    .param p1, "toAdd"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    return v0
.end method

.method public declared-synchronized log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 3
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mDebugLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p3, v1, :cond_1

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 94
    .local v0, "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->getDebugLevel()I

    move-result v2

    if-gt v2, p3, :cond_2

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    monitor-enter p0

    if-nez p3, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 113
    .local v0, "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    const/4 v2, 0x3

    invoke-virtual {v0, p1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 115
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 116
    .restart local v0    # "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 119
    .end local v0    # "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdaptersDebug(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    .line 179
    return-void
.end method

.method public setLoggerDebugLevel(Ljava/lang/String;I)V
    .locals 5
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "debugLevel"    # I

    .prologue
    const/4 v4, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->findLoggerByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    move-result-object v0

    .line 154
    .local v0, "logger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    if-eqz v0, :cond_2

    .line 157
    if-ltz p2, :cond_1

    const/4 v1, 0x3

    if-gt p2, v1, :cond_1

    .line 159
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoggerDebugLevel(loggerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,debugLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 160
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->setDebugLevel(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_2
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find logger:setLoggerDebugLevel(loggerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,debugLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method
