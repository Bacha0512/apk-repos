.class public final enum Lnet/pubnative/player/VASTPlayer$CampaignType;
.super Ljava/lang/Enum;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/player/VASTPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CampaignType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/pubnative/player/VASTPlayer$CampaignType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/player/VASTPlayer$CampaignType;

.field public static final enum CPC:Lnet/pubnative/player/VASTPlayer$CampaignType;

.field public static final enum CPM:Lnet/pubnative/player/VASTPlayer$CampaignType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lnet/pubnative/player/VASTPlayer$CampaignType;

    const-string v1, "CPC"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/player/VASTPlayer$CampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/player/VASTPlayer$CampaignType;->CPC:Lnet/pubnative/player/VASTPlayer$CampaignType;

    .line 87
    new-instance v0, Lnet/pubnative/player/VASTPlayer$CampaignType;

    const-string v1, "CPM"

    invoke-direct {v0, v1, v3}, Lnet/pubnative/player/VASTPlayer$CampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/player/VASTPlayer$CampaignType;->CPM:Lnet/pubnative/player/VASTPlayer$CampaignType;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/pubnative/player/VASTPlayer$CampaignType;

    sget-object v1, Lnet/pubnative/player/VASTPlayer$CampaignType;->CPC:Lnet/pubnative/player/VASTPlayer$CampaignType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/pubnative/player/VASTPlayer$CampaignType;->CPM:Lnet/pubnative/player/VASTPlayer$CampaignType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/pubnative/player/VASTPlayer$CampaignType;->$VALUES:[Lnet/pubnative/player/VASTPlayer$CampaignType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/player/VASTPlayer$CampaignType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lnet/pubnative/player/VASTPlayer$CampaignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/pubnative/player/VASTPlayer$CampaignType;

    return-object v0
.end method

.method public static values()[Lnet/pubnative/player/VASTPlayer$CampaignType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lnet/pubnative/player/VASTPlayer$CampaignType;->$VALUES:[Lnet/pubnative/player/VASTPlayer$CampaignType;

    invoke-virtual {v0}, [Lnet/pubnative/player/VASTPlayer$CampaignType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/player/VASTPlayer$CampaignType;

    return-object v0
.end method
