.class final Lorg/abtollc/api/MediaState$1;
.super Ljava/lang/Object;
.source "MediaState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/MediaState;
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
        "Lorg/abtollc/api/MediaState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/abtollc/api/MediaState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/abtollc/api/MediaState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/abtollc/api/MediaState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    new-instance v0, Lorg/abtollc/api/MediaState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/abtollc/api/MediaState;-><init>(Landroid/os/Parcel;Lorg/abtollc/api/MediaState$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/abtollc/api/MediaState$1;->newArray(I)[Lorg/abtollc/api/MediaState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/abtollc/api/MediaState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lorg/abtollc/api/MediaState;

    return-object v0
.end method
