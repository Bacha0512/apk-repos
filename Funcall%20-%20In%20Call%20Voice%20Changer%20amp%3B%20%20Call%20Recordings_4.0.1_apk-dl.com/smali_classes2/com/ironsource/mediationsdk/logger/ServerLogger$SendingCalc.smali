.class Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;
.super Ljava/lang/Object;
.source "ServerLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/logger/ServerLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendingCalc"
.end annotation


# instance fields
.field private DEFAULT_DEBUG_LEVEL:I

.field private DEFAULT_SIZE:I

.field private DEFAULT_TIME:I

.field final synthetic this$0:Lcom/ironsource/mediationsdk/logger/ServerLogger;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/logger/ServerLogger;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 134
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->this$0:Lcom/ironsource/mediationsdk/logger/ServerLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_SIZE:I

    .line 131
    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_TIME:I

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_DEBUG_LEVEL:I

    .line 135
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->initDefaults()V

    .line 136
    return-void
.end method

.method private calc(I)Z
    .locals 2
    .param p1, "event"    # I

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->error(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->size()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->time()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private error(I)Z
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 170
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDefaults()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method private size()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method private time()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public notifyEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->calc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->this$0:Lcom/ironsource/mediationsdk/logger/ServerLogger;

    # invokes: Lcom/ironsource/mediationsdk/logger/ServerLogger;->send()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->access$000(Lcom/ironsource/mediationsdk/logger/ServerLogger;)V

    .line 149
    :cond_0
    return-void
.end method
