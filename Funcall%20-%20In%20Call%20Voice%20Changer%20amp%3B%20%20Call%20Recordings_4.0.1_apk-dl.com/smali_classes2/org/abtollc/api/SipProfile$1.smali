.class final Lorg/abtollc/api/SipProfile$1;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/SipProfile;
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
        "Lorg/abtollc/api/SipProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Lorg/abtollc/api/SipProfile$1;->createFromParcel(Landroid/os/Parcel;)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/abtollc/api/SipProfile;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 911
    new-instance v0, Lorg/abtollc/api/SipProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/os/Parcel;Lorg/abtollc/api/SipProfile$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Lorg/abtollc/api/SipProfile$1;->newArray(I)[Lorg/abtollc/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/abtollc/api/SipProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 915
    new-array v0, p1, [Lorg/abtollc/api/SipProfile;

    return-object v0
.end method
