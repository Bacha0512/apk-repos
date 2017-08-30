.class Lcom/twilio/client/impl/DeviceStateInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twilio/client/impl/DeviceStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field capabilityToken:Ljava/lang/String;

.field features:[Lcom/twilio/client/impl/net/EventStream$Feature;

.field incomingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twilio/client/impl/DeviceStateInfo$1;

    invoke-direct {v0}, Lcom/twilio/client/impl/DeviceStateInfo$1;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->capabilityToken:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->incomingIntent:Landroid/app/PendingIntent;

    const-class v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    :goto_0
    new-array v0, v0, [Lcom/twilio/client/impl/net/EventStream$Feature;

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->features:[Lcom/twilio/client/impl/net/EventStream$Feature;

    if-eqz v4, :cond_1

    array-length v5, v4

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    instance-of v1, v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/twilio/client/impl/DeviceStateInfo;->features:[Lcom/twilio/client/impl/net/EventStream$Feature;

    add-int/lit8 v1, v2, 0x1

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    aput-object v0, v6, v2

    move v0, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twilio/client/impl/DeviceStateInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/DeviceStateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/DeviceStateInfo;->capabilityToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/twilio/client/impl/DeviceStateInfo;->incomingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p3}, Lcom/twilio/client/impl/DeviceStateInfo;->setFeatures(Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setFeatures(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twilio/client/impl/net/EventStream$Feature;

    iput-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->features:[Lcom/twilio/client/impl/net/EventStream$Feature;

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->features:[Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->capabilityToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->incomingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceStateInfo;->features:[Lcom/twilio/client/impl/net/EventStream$Feature;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
