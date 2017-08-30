.class public final Lcom/google/android/gms/internal/acs;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj",
        "<",
        "Lcom/google/android/gms/internal/acs;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcqq:I

.field public zzcqr:J

.field public zzcrm:I

.field public zzcrn:I

.field public zzcro:I

.field public zzcrp:D

.field public zzcrq:D

.field public zzcrr:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    iput v0, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    iput-wide v4, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    iput v0, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    iput v0, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrp:D

    iput-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrq:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/acs;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/acs;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/acs;

    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    iget v3, p1, Lcom/google/android/gms/internal/acs;->zzcqq:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    iget v3, p1, Lcom/google/android/gms/internal/acs;->zzcrm:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/acs;->zzcqr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    iget v3, p1, Lcom/google/android/gms/internal/acs;->zzcrn:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    iget v3, p1, Lcom/google/android/gms/internal/acs;->zzcro:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrp:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/acs;->zzcrp:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/acs;->zzcrq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/acs;->zzcrr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object v1, p1, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrp:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/acs;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/acs;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/acs;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLG()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLI()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcrp:D

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLI()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcrq:D

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLG()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x39 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcrp:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrp:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/adh;->zza(ID)V

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcrq:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrq:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/adh;->zza(ID)V

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcqq:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcrm:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcqr:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/adh;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcrn:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/acs;->zzcro:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrp:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/acs;->zzcrr:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/adh;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method
