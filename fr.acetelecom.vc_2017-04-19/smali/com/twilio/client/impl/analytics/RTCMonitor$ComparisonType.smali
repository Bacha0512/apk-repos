.class public final enum Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/RTCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

.field public static final enum MAX:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

.field public static final enum MAXCONSTANTDURATION:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

.field public static final enum MIN:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MIN:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    new-instance v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAX:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    new-instance v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    const-string v1, "MAXCONSTANTDURATION"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAXCONSTANTDURATION:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    sget-object v1, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MIN:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAX:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAXCONSTANTDURATION:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->$VALUES:[Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->$VALUES:[Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    return-object v0
.end method
