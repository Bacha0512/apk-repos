.class public final Lcom/google/android/gms/internal/zzayp;
.super Lcom/google/android/gms/internal/zzaxt;


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final zzawS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayu;",
            ">;"
        }
    .end annotation
.end field

.field private zzayA:J

.field private zzayB:Lcom/google/android/gms/cast/MediaStatus;

.field private zzayC:Lcom/google/android/gms/internal/zzayq;

.field private final zzayD:Lcom/google/android/gms/internal/zzayu;

.field private final zzayE:Lcom/google/android/gms/internal/zzayu;

.field private final zzayF:Lcom/google/android/gms/internal/zzayu;

.field private final zzayG:Lcom/google/android/gms/internal/zzayu;

.field private final zzayH:Lcom/google/android/gms/internal/zzayu;

.field private final zzayI:Lcom/google/android/gms/internal/zzayu;

.field private final zzayJ:Lcom/google/android/gms/internal/zzayu;

.field private final zzayK:Lcom/google/android/gms/internal/zzayu;

.field private final zzayL:Lcom/google/android/gms/internal/zzayu;

.field private final zzayM:Lcom/google/android/gms/internal/zzayu;

.field private final zzayN:Lcom/google/android/gms/internal/zzayu;

.field private final zzayO:Lcom/google/android/gms/internal/zzayu;

.field private final zzayP:Lcom/google/android/gms/internal/zzayu;

.field private final zzayQ:Lcom/google/android/gms/internal/zzayu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaye;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzayp;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const-wide/32 v8, 0x5265c00

    sget-object v2, Lcom/google/android/gms/internal/zzayp;->NAMESPACE:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    const-string v4, "MediaControlChannel"

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaxt;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayD:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayE:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayF:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayG:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayH:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayI:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayJ:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayK:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayL:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayM:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayN:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayO:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayP:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Lcom/google/android/gms/internal/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayQ:Lcom/google/android/gms/internal/zzayu;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayD:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayE:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayF:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayG:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayH:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayI:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayJ:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayK:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayL:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayM:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayN:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayO:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayP:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayQ:Lcom/google/android/gms/internal/zzayu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zzoM()V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzayq;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzayq;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzayq;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzayq;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final zza(JLorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayD:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzayu;->test(J)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayH:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayu;->zzoO()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayH:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzayu;->test(J)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayI:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzayu;->zzoO()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayI:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzayu;->test(J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayJ:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzayu;->zzoO()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayJ:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzayu;->test(J)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_1
    :goto_1
    if-eqz v0, :cond_f

    const/4 v0, 0x2

    :goto_2
    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v1, :cond_d

    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    const/16 v0, 0x7f

    :goto_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onStatusUpdated()V

    :cond_4
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onStatusUpdated()V

    :cond_5
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onMetadataUpdated()V

    :cond_6
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onQueueStatusUpdated()V

    :cond_7
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onPreloadStatusUpdated()V

    :cond_8
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzayq;->onAdBreakStatusUpdated()V

    :cond_9
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onStatusUpdated()V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z

    goto :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_3

    :cond_e
    return-void

    :cond_f
    move v0, v2

    goto/16 :goto_2
.end method

.method private final zznk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzayr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzayr;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zznk()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzoM()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayu;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getApproximateStreamPosition()J
    .locals 12

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v6, 0x0

    cmpl-double v6, v8, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    :cond_2
    move-wide v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzayp;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzayp;->zzayA:J

    sub-long/2addr v6, v10

    cmp-long v10, v6, v2

    if-gez v10, :cond_4

    move-wide v6, v2

    :cond_4
    cmp-long v10, v6, v2

    if-nez v10, :cond_5

    move-wide v2, v4

    goto :goto_0

    :cond_5
    long-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v0, v2

    if-lez v6, :cond_6

    cmp-long v6, v4, v0

    if-lez v6, :cond_6

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_6
    cmp-long v0, v4, v2

    if-gez v0, :cond_7

    move-wide v0, v2

    goto :goto_1

    :cond_7
    move-wide v0, v4

    goto :goto_1
.end method

.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final getStreamDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayK:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "GET_STATUS"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v1, :cond_0

    const-string v1, "mediaSessionId"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;DLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayI:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    invoke-virtual {v1, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_2

    const-string v1, "customData"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "playPosition cannot be negative: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayp;->zzayO:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v2, "requestId"

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v6, "QUEUE_UPDATE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string v2, "currentItemId"

    invoke-virtual {v3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    const-string v2, "jump"

    move/from16 v0, p6

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    array-length v2, v0

    if-lez v2, :cond_4

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p5

    array-length v7, v0

    if-ge v2, v7, :cond_3

    aget-object v7, p5, v2

    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "items"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_5
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v2, p3, v6

    if-eqz v2, :cond_6

    const-string v2, "currentTime"

    long-to-double v6, p3

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    if-eqz p8, :cond_7

    const-string v2, "customData"

    move-object/from16 v0, p8

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v4

    :pswitch_0
    :try_start_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_OFF"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :pswitch_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_2
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_SINGLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_3
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;JILorg/json/JSONObject;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    const/4 v8, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayH:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentTime"

    long-to-double v4, p2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, v8, :cond_2

    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_START"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    const-string v1, "customData"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    :try_start_1
    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayD:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "LOAD"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "autoplay"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "currentTime"

    long-to-double v4, p4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p6, :cond_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p6

    if-ge v0, v5, :cond_0

    aget-wide v6, p6, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p7, :cond_2

    const-string v0, "customData"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayM:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "textTrackStyle"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayE:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;ZLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayJ:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "muted"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;[IILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemIdsToReorder must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayQ:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_REORDER"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    aget v5, p2, v0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "itemIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v0, "insertBefore"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p4, :cond_4

    const-string v0, "customData"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;[ILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemIdsToRemove must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayP:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "QUEUE_REMOVE"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    aget v5, p2, v0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "itemIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v0, "customData"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;[J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayL:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_0

    aget-wide v6, p2, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "itemsToInsert must not be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, -0x1

    if-eq p5, v2, :cond_3

    if-ltz p5, :cond_2

    array-length v2, p2

    if-lt p5, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    array-length v7, p2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "playPosition can not be negative: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayp;->zzayN:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v2, "requestId"

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v6, "QUEUE_INSERT"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_5

    aget-object v7, p2, v2

    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "items"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_6

    const-string v2, "insertBefore"

    invoke-virtual {v3, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    const/4 v2, -0x1

    if-eq p5, v2, :cond_7

    const-string v2, "currentItemIndex"

    invoke-virtual {v3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    const-wide/16 v6, -0x1

    cmp-long v2, p6, v6

    if-eqz v2, :cond_8

    const-string v2, "currentTime"

    move-wide/from16 v0, p6

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_8
    if-eqz p8, :cond_9

    const-string v2, "customData"

    move-object/from16 v0, p8

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v4

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayt;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items must not be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-ltz p3, :cond_2

    array-length v2, p2

    if-lt p3, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid startIndex: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    cmp-long v2, p5, v8

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "playPosition can not be negative: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayp;->zzayD:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v2, "requestId"

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v6, "QUEUE_LOAD"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_5

    aget-object v7, p2, v2

    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "items"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p4, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v6, 0x20

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid repeat mode: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    :cond_6
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v4

    :pswitch_0
    :try_start_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_OFF"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string v2, "startIndex"

    invoke-virtual {v3, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long v2, p5, v8

    if-eqz v2, :cond_7

    const-string v2, "currentTime"

    move-wide/from16 v0, p5

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz p7, :cond_6

    const-string v2, "customData"

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_1
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_2
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_SINGLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_3
    const-string v2, "repeatMode"

    const-string v6, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayp;->zzayC:Lcom/google/android/gms/internal/zzayq;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzayt;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayG:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "STOP"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzayt;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzayr;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzayp;->zzoA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayp;->zzayF:Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzayp;->zzZ(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PLAY"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zznk()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzayp;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final zzc(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzch(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v4, "message received: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "requestId"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v8, "MEDIA_STATUS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v8, "INVALID_PLAYER_STATE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v8, "LOAD_FAILED"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v8, "LOAD_CANCELLED"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v8, "INVALID_REQUEST"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v6, v7, v0}, Lcom/google/android/gms/internal/zzayp;->zza(JLorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v5, "Message is malformed (%s); ignoring: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayB:Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onMetadataUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onQueueStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->onPreloadStatusUpdated()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzayK:Lcom/google/android/gms/internal/zzayu;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v5, "received unexpected error: Invalid Player State."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v8}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    const/16 v8, 0x834

    invoke-virtual {v0, v6, v7, v8, v4}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayD:Lcom/google/android/gms/internal/zzayu;

    const/16 v5, 0x834

    invoke-virtual {v4, v6, v7, v5, v0}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzayp;->zzayD:Lcom/google/android/gms/internal/zzayu;

    const/16 v5, 0x835

    invoke-virtual {v4, v6, v7, v5, v0}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v5, "received unexpected error: Invalid Request."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v8}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "customData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    const/16 v8, 0x834

    invoke-virtual {v0, v6, v7, v8, v4}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_3
        -0x430e23f9 -> :sswitch_4
        -0xfa7664a -> :sswitch_2
        0x19b9b2fb -> :sswitch_1
        0x3115c4cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzoz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaxt;->zzoz()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayp;->zzoM()V

    return-void
.end method

.method protected final zzz(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    const/16 v2, 0x836

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/zzayu;->zzd(JI)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayp;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayu;->zzoO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
