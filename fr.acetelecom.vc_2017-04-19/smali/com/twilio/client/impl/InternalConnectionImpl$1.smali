.class final Lcom/twilio/client/impl/InternalConnectionImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/InternalConnectionImpl;
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
        "Lcom/twilio/client/impl/InternalConnectionImpl;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/twilio/client/impl/InternalConnectionImpl;
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/twilio/client/impl/DeviceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/DeviceImpl;->findConnectionByUUID(Ljava/util/UUID;)Lcom/twilio/client/impl/InternalConnectionImpl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/InternalConnectionImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/twilio/client/impl/InternalConnectionImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/twilio/client/impl/InternalConnectionImpl;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/InternalConnectionImpl$1;->newArray(I)[Lcom/twilio/client/impl/InternalConnectionImpl;

    move-result-object v0

    return-object v0
.end method
