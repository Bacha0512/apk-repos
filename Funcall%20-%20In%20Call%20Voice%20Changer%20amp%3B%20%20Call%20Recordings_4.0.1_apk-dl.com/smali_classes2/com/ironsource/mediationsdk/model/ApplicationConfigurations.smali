.class public Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;
.super Ljava/lang/Object;
.source "ApplicationConfigurations.java"


# instance fields
.field private mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

.field private mSegmetData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/ApplicationLogger;Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V
    .locals 0
    .param p1, "logger"    # Lcom/ironsource/mediationsdk/model/ApplicationLogger;
    .param p2, "data"    # Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    .line 19
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mSegmetData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    .line 20
    return-void
.end method


# virtual methods
.method public getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    return-object v0
.end method

.method public getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mSegmetData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    return-object v0
.end method
