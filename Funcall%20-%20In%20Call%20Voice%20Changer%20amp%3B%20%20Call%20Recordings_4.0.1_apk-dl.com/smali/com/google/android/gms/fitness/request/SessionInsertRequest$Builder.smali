.class public Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionInsertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaXe:Lcom/google/android/gms/fitness/data/Session;

.field private zzaXf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field

.field private zzaXg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private zzaXi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXf:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXg:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXi:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXf:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXg:Ljava/util/List;

    return-object v0
.end method

.method private final zzd(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    cmp-long v2, v0, v6

    if-lez v2, :cond_6

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v8}, Lcom/google/android/gms/internal/zzbue;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    const-string v1, "Data point %s has time stamp outside session interval [%d, %d]"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v4, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "Fitness"

    const-string v1, "Data point timestamp [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v8, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/internal/zzbue;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    :cond_2
    cmp-long v0, v2, v6

    if-ltz v0, :cond_5

    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    const-string v10, "Data point %s has start and end times outside session interval [%d, %d]"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v12

    const/4 v6, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v6

    invoke-static {v0, v10, v11}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    const-string v0, "Fitness"

    const-string v6, "Data point end time [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move-wide v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public addAggregateDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must specify a valid aggregate data point."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXi:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v4, "Data set/Aggregate data point for this data source %s is already added."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXi:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public addDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must specify a valid data set."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXi:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v4, "Data set for this data source %s is already added."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    const-string v0, "No data points specified in the input data set."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXi:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public build()Lcom/google/android/gms/fitness/request/SessionInsertRequest;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Must specify a valid session."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    :goto_1
    const-string v0, "Must specify a valid end time, cannot insert a continuing session."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzd(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzd(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;Lcom/google/android/gms/fitness/request/zzas;)V

    return-object v0
.end method

.method public setSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaXe:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method
