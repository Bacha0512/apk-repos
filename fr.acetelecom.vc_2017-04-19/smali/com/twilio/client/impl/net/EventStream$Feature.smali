.class public final enum Lcom/twilio/client/impl/net/EventStream$Feature;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/net/EventStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/net/EventStream$Feature;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/net/EventStream$Feature;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum INCOMING_CALLS:Lcom/twilio/client/impl/net/EventStream$Feature;

.field public static final enum PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

.field public static final enum PUBLISH_PRESENCE:Lcom/twilio/client/impl/net/EventStream$Feature;


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    const-string v1, "INCOMING_CALLS"

    const-string v2, "incomingCalls"

    invoke-direct {v0, v1, v3, v2}, Lcom/twilio/client/impl/net/EventStream$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/net/EventStream$Feature;->INCOMING_CALLS:Lcom/twilio/client/impl/net/EventStream$Feature;

    new-instance v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    const-string v1, "PRESENCE_EVENTS"

    const-string v2, "presenceEvents"

    invoke-direct {v0, v1, v4, v2}, Lcom/twilio/client/impl/net/EventStream$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    new-instance v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    const-string v1, "PUBLISH_PRESENCE"

    const-string v2, "publishPresence"

    invoke-direct {v0, v1, v5, v2}, Lcom/twilio/client/impl/net/EventStream$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/net/EventStream$Feature;->PUBLISH_PRESENCE:Lcom/twilio/client/impl/net/EventStream$Feature;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twilio/client/impl/net/EventStream$Feature;

    sget-object v1, Lcom/twilio/client/impl/net/EventStream$Feature;->INCOMING_CALLS:Lcom/twilio/client/impl/net/EventStream$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/net/EventStream$Feature;->PRESENCE_EVENTS:Lcom/twilio/client/impl/net/EventStream$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/net/EventStream$Feature;->PUBLISH_PRESENCE:Lcom/twilio/client/impl/net/EventStream$Feature;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twilio/client/impl/net/EventStream$Feature;->$VALUES:[Lcom/twilio/client/impl/net/EventStream$Feature;

    new-instance v0, Lcom/twilio/client/impl/net/EventStream$Feature$1;

    invoke-direct {v0}, Lcom/twilio/client/impl/net/EventStream$Feature$1;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/net/EventStream$Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/twilio/client/impl/net/EventStream$Feature;->token:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/net/EventStream$Feature;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/net/EventStream$Feature;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/net/EventStream$Feature;->$VALUES:[Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/net/EventStream$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/net/EventStream$Feature;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream$Feature;->token:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/net/EventStream$Feature;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
