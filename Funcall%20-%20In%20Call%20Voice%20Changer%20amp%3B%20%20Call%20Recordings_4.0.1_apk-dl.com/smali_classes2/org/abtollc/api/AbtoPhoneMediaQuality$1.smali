.class final Lorg/abtollc/api/AbtoPhoneMediaQuality$1;
.super Ljava/lang/Object;
.source "AbtoPhoneMediaQuality.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/AbtoPhoneMediaQuality;
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
        "Lorg/abtollc/api/AbtoPhoneMediaQuality;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lorg/abtollc/api/AbtoPhoneMediaQuality$1;->createFromParcel(Landroid/os/Parcel;)Lorg/abtollc/api/AbtoPhoneMediaQuality;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/abtollc/api/AbtoPhoneMediaQuality;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 112
    new-instance v0, Lorg/abtollc/api/AbtoPhoneMediaQuality;

    invoke-direct {v0, p1}, Lorg/abtollc/api/AbtoPhoneMediaQuality;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lorg/abtollc/api/AbtoPhoneMediaQuality$1;->newArray(I)[Lorg/abtollc/api/AbtoPhoneMediaQuality;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/abtollc/api/AbtoPhoneMediaQuality;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 116
    new-array v0, p1, [Lorg/abtollc/api/AbtoPhoneMediaQuality;

    return-object v0
.end method
