.class final Lcom/twilio/client/impl/net/EventStream$Feature$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/net/EventStream$Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/twilio/client/impl/net/EventStream$Feature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/twilio/client/impl/net/EventStream$Feature;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/twilio/client/impl/net/EventStream$Feature;->values()[Lcom/twilio/client/impl/net/EventStream$Feature;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/twilio/client/impl/net/EventStream$Feature;->values()[Lcom/twilio/client/impl/net/EventStream$Feature;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/net/EventStream$Feature$1;->createFromParcel(Landroid/os/Parcel;)Lcom/twilio/client/impl/net/EventStream$Feature;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/twilio/client/impl/net/EventStream$Feature;
    .locals 1

    new-array v0, p1, [Lcom/twilio/client/impl/net/EventStream$Feature;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/net/EventStream$Feature$1;->newArray(I)[Lcom/twilio/client/impl/net/EventStream$Feature;

    move-result-object v0

    return-object v0
.end method
