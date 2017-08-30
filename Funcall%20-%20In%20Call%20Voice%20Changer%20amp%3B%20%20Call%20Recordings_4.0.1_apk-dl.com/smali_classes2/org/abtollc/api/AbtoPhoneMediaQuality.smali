.class public Lorg/abtollc/api/AbtoPhoneMediaQuality;
.super Ljava/lang/Object;
.source "AbtoPhoneMediaQuality.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/abtollc/api/AbtoPhoneMediaQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field avgBufferJitter:J

.field avgBurstJitter:J

.field avgRtt:J

.field burstJitter:J

.field devBufferJitter:J

.field maxBufferJitter:J

.field maxRtt:J

.field minBufferJitter:J

.field minRtt:J

.field rxPackets:J

.field txPackets:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lorg/abtollc/api/AbtoPhoneMediaQuality$1;

    invoke-direct {v0}, Lorg/abtollc/api/AbtoPhoneMediaQuality$1;-><init>()V

    sput-object v0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method private final readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minRtt:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxRtt:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgRtt:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minBufferJitter:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxBufferJitter:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBufferJitter:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->devBufferJitter:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->burstJitter:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBurstJitter:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->rxPackets:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->txPackets:J

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getAvgBufferJitter()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBufferJitter:J

    return-wide v0
.end method

.method public getAvgBurstJitter()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBurstJitter:J

    return-wide v0
.end method

.method public getAvgRtt()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgRtt:J

    return-wide v0
.end method

.method public getBurstJitter()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->burstJitter:J

    return-wide v0
.end method

.method public getDevBufferJitter()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->devBufferJitter:J

    return-wide v0
.end method

.method public getMaxBufferJitter()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxBufferJitter:J

    return-wide v0
.end method

.method public getMaxRtt()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxRtt:J

    return-wide v0
.end method

.method public getMinBufferJitter()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minBufferJitter:J

    return-wide v0
.end method

.method public getMinRtt()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minRtt:J

    return-wide v0
.end method

.method public getRxPackets()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->rxPackets:J

    return-wide v0
.end method

.method public getTxPackets()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->txPackets:J

    return-wide v0
.end method

.method public setAvgBufferJitter(J)V
    .locals 1
    .param p1, "avgBufferJitter"    # J

    .prologue
    .line 165
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBufferJitter:J

    .line 166
    return-void
.end method

.method public setAvgBurstJitter(J)V
    .locals 1
    .param p1, "avgBurstJitter"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBurstJitter:J

    .line 190
    return-void
.end method

.method public setAvgRtt(J)V
    .locals 1
    .param p1, "avgRtt"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgRtt:J

    .line 142
    return-void
.end method

.method public setBurstJitter(J)V
    .locals 1
    .param p1, "burstJitter"    # J

    .prologue
    .line 181
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->burstJitter:J

    .line 182
    return-void
.end method

.method public setDevBufferJitter(J)V
    .locals 1
    .param p1, "devBufferJitter"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->devBufferJitter:J

    .line 174
    return-void
.end method

.method public setMaxBufferJitter(J)V
    .locals 1
    .param p1, "maxBufferJitter"    # J

    .prologue
    .line 157
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxBufferJitter:J

    .line 158
    return-void
.end method

.method public setMaxRtt(J)V
    .locals 1
    .param p1, "maxRtt"    # J

    .prologue
    .line 133
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxRtt:J

    .line 134
    return-void
.end method

.method public setMinBufferJitter(J)V
    .locals 1
    .param p1, "minBufferJitter"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minBufferJitter:J

    .line 150
    return-void
.end method

.method public setMinRtt(J)V
    .locals 1
    .param p1, "minRtt"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minRtt:J

    .line 126
    return-void
.end method

.method public setRxPackets(J)V
    .locals 1
    .param p1, "rxPackets"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->rxPackets:J

    .line 198
    return-void
.end method

.method public setTxPackets(J)V
    .locals 1
    .param p1, "txPackets"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->txPackets:J

    .line 206
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minRtt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxRtt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgRtt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->minBufferJitter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->maxBufferJitter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBufferJitter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->devBufferJitter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->burstJitter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->avgBurstJitter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->rxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lorg/abtollc/api/AbtoPhoneMediaQuality;->txPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    return-void
.end method
