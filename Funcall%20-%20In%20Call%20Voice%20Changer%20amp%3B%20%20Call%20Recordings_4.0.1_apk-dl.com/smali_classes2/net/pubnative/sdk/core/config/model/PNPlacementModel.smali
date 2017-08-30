.class public Lnet/pubnative/sdk/core/config/model/PNPlacementModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/config/model/PNPlacementModel$AdFormatCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public ad_cache:Z

.field public ad_format_code:Ljava/lang/String;

.field public delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

.field public priority_rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriorityRule(I)Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 53
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    .line 55
    :cond_0
    return-object v0
.end method
