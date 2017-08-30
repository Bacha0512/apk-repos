.class public Lorg/abtollc/api/MediaState;
.super Ljava/lang/Object;
.source "MediaState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/abtollc/api/MediaState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canBluetoothSco:Z

.field public canMicrophoneMute:Z

.field public canSpeakerphoneOn:Z

.field public isBluetoothScoOn:Z

.field public isMicrophoneMute:Z

.field public isSpeakerphoneOn:Z

.field public primaryKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lorg/abtollc/api/MediaState$1;

    invoke-direct {v0}, Lorg/abtollc/api/MediaState$1;-><init>()V

    sput-object v0, Lorg/abtollc/api/MediaState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/api/MediaState;->primaryKey:I

    .line 25
    iput-boolean v1, p0, Lorg/abtollc/api/MediaState;->isMicrophoneMute:Z

    .line 30
    iput-boolean v1, p0, Lorg/abtollc/api/MediaState;->isSpeakerphoneOn:Z

    .line 34
    iput-boolean v1, p0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    .line 38
    iput-boolean v2, p0, Lorg/abtollc/api/MediaState;->canMicrophoneMute:Z

    .line 42
    iput-boolean v2, p0, Lorg/abtollc/api/MediaState;->canSpeakerphoneOn:Z

    .line 46
    iput-boolean v1, p0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/api/MediaState;->primaryKey:I

    .line 25
    iput-boolean v2, p0, Lorg/abtollc/api/MediaState;->isMicrophoneMute:Z

    .line 30
    iput-boolean v2, p0, Lorg/abtollc/api/MediaState;->isSpeakerphoneOn:Z

    .line 34
    iput-boolean v2, p0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    .line 38
    iput-boolean v1, p0, Lorg/abtollc/api/MediaState;->canMicrophoneMute:Z

    .line 42
    iput-boolean v1, p0, Lorg/abtollc/api/MediaState;->canSpeakerphoneOn:Z

    .line 46
    iput-boolean v2, p0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/MediaState;->primaryKey:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/abtollc/api/MediaState;->isMicrophoneMute:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/abtollc/api/MediaState;->isSpeakerphoneOn:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/abtollc/api/MediaState;->canMicrophoneMute:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/abtollc/api/MediaState;->canSpeakerphoneOn:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    .line 93
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1

    :cond_2
    move v0, v2

    .line 89
    goto :goto_2

    :cond_3
    move v0, v2

    .line 90
    goto :goto_3

    :cond_4
    move v0, v2

    .line 91
    goto :goto_4

    :cond_5
    move v1, v2

    .line 92
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/abtollc/api/MediaState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/abtollc/api/MediaState$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/abtollc/api/MediaState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/abtollc/api/MediaState;

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 52
    check-cast v0, Lorg/abtollc/api/MediaState;

    .line 53
    .local v0, "oState":Lorg/abtollc/api/MediaState;
    iget-boolean v1, v0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    iget-boolean v2, p0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lorg/abtollc/api/MediaState;->isMicrophoneMute:Z

    iget-boolean v2, p0, Lorg/abtollc/api/MediaState;->isMicrophoneMute:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lorg/abtollc/api/MediaState;->isSpeakerphoneOn:Z

    iget-boolean v2, p0, Lorg/abtollc/api/MediaState;->isSpeakerphoneOn:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    iget-boolean v2, p0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lorg/abtollc/api/MediaState;->canSpeakerphoneOn:Z

    iget-boolean v2, p0, Lorg/abtollc/api/MediaState;->canSpeakerphoneOn:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lorg/abtollc/api/MediaState;->canMicrophoneMute:Z

    iget-boolean v2, p0, Lorg/abtollc/api/MediaState;->canMicrophoneMute:Z

    if-ne v1, v2, :cond_0

    .line 59
    const/4 v1, 0x1

    .line 65
    .end local v0    # "oState":Lorg/abtollc/api/MediaState;
    :goto_0
    return v1

    .line 61
    .restart local v0    # "oState":Lorg/abtollc/api/MediaState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    .end local v0    # "oState":Lorg/abtollc/api/MediaState;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget v0, p0, Lorg/abtollc/api/MediaState;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-boolean v0, p0, Lorg/abtollc/api/MediaState;->isMicrophoneMute:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Lorg/abtollc/api/MediaState;->isSpeakerphoneOn:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v0, p0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-boolean v0, p0, Lorg/abtollc/api/MediaState;->canMicrophoneMute:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Lorg/abtollc/api/MediaState;->canSpeakerphoneOn:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean v0, p0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    :cond_1
    move v0, v2

    .line 122
    goto :goto_1

    :cond_2
    move v0, v2

    .line 123
    goto :goto_2

    :cond_3
    move v0, v2

    .line 124
    goto :goto_3

    :cond_4
    move v0, v2

    .line 125
    goto :goto_4

    :cond_5
    move v1, v2

    .line 126
    goto :goto_5
.end method
