.class final Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;
.super Ljava/util/ArrayList;
.source "IntegrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/ironsource/mediationsdk/integration/AdapterObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$adColonyAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$admobAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$appLovinAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$chartboostAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$facebookAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$hyprMXAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$inMobiAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$ironSourceAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$mediaBrixAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$tapjoyAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$unityAdsAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

.field final synthetic val$vungleAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$ironSourceAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$adColonyAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$appLovinAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$chartboostAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p5, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$hyprMXAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p6, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$unityAdsAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p7, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$vungleAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p8, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$inMobiAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p9, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$mediaBrixAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p10, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$facebookAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p11, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$tapjoyAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    iput-object p12, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$admobAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$ironSourceAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$adColonyAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$appLovinAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$chartboostAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$hyprMXAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$unityAdsAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$vungleAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$inMobiAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$mediaBrixAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$facebookAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$tapjoyAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->val$admobAdapter:Lcom/ironsource/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method
