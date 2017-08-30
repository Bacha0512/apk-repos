.class public Lnet/pubnative/sdk/core/config/model/PNConfigModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/config/model/PNConfigModel$GLOBAL;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public ad_cache_params:Ljava/util/Map;
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

.field public globals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public networks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/pubnative/sdk/core/config/model/PNNetworkModel;",
            ">;"
        }
    .end annotation
.end field

.field public placements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/pubnative/sdk/core/config/model/PNPlacementModel;",
            ">;"
        }
    .end annotation
.end field

.field public request_params:Ljava/util/Map;
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
    .locals 1

    .prologue
    .line 31
    const-class v0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGlobal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public getNetwork(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNNetworkModel;
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->networks:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 86
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->networks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    .line 88
    :cond_0
    return-object v0
.end method

.method public getPlacement(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNPlacementModel;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->placements:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->placements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    .line 79
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->networks:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->placements:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->networks:Ljava/util/Map;

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->placements:Ljava/util/Map;

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
