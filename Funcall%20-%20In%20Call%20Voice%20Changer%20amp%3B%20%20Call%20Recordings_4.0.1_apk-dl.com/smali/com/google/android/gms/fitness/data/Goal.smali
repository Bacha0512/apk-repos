.class public Lcom/google/android/gms/fitness/data/Goal;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/Goal$MismatchedGoalException;,
        Lcom/google/android/gms/fitness/data/Goal$ObjectiveType;,
        Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;,
        Lcom/google/android/gms/fitness/data/Goal$DurationObjective;,
        Lcom/google/android/gms/fitness/data/Goal$MetricObjective;,
        Lcom/google/android/gms/fitness/data/Goal$Recurrence;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECTIVE_TYPE_DURATION:I = 0x2

.field public static final OBJECTIVE_TYPE_FREQUENCY:I = 0x3

.field public static final OBJECTIVE_TYPE_METRIC:I = 0x1


# instance fields
.field private final versionCode:I

.field private final zzaUH:J

.field private final zzaUI:J

.field private final zzaUJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

.field private final zzaUL:I

.field private final zzaUM:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

.field private final zzaUN:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

.field private final zzaUO:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLjava/util/List;Lcom/google/android/gms/fitness/data/Goal$Recurrence;ILcom/google/android/gms/fitness/data/Goal$MetricObjective;Lcom/google/android/gms/fitness/data/Goal$DurationObjective;Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/fitness/data/Goal$Recurrence;",
            "I",
            "Lcom/google/android/gms/fitness/data/Goal$MetricObjective;",
            "Lcom/google/android/gms/fitness/data/Goal$DurationObjective;",
            "Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUH:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUI:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUJ:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    iput p8, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUL:I

    iput-object p9, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUM:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    iput-object p10, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUN:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    iput-object p11, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUO:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    return-void
.end method

.method private static zzaW(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid objective type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "metric"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "duration"

    goto :goto_0

    :pswitch_2
    const-string v0, "frequency"

    goto :goto_0

    :pswitch_3
    const-string v0, "unknown"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final zzaX(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fitness/data/Goal$MismatchedGoalException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUL:I

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/fitness/data/Goal$MismatchedGoalException;

    const-string v1, "%s goal does not have %s objective"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUL:I

    invoke-static {v4}, Lcom/google/android/gms/fitness/data/Goal;->zzaW(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Goal;->zzaW(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/data/Goal$MismatchedGoalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Goal;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUH:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUH:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUI:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUI:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUJ:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUJ:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUL:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUL:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUM:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUM:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUN:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUN:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUO:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzaUO:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUJ:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/zza;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCreateTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUH:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationObjective()Lcom/google/android/gms/fitness/data/Goal$DurationObjective;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/Goal;->zzaX(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUN:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    return-object v0
.end method

.method public getEndTime(Ljava/util/Calendar;Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/16 v4, 0xb

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result v1

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid unit "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUI:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFrequencyObjective()Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/Goal;->zzaX(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUO:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    return-object v0
.end method

.method public getMetricObjective()Lcom/google/android/gms/fitness/data/Goal$MetricObjective;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/Goal;->zzaX(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUM:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    return-object v0
.end method

.method public getObjectiveType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUL:I

    return v0
.end method

.method public getRecurrence()Lcom/google/android/gms/fitness/data/Goal$Recurrence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    return-object v0
.end method

.method public getStartTime(Ljava/util/Calendar;Ljava/util/concurrent/TimeUnit;)J
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result v1

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid unit "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_1
    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUH:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUL:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbe;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "recurrence"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUK:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "metricObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUM:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "durationObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUN:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "frequencyObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUO:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUH:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUI:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUJ:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzd(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->getRecurrence()Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->getObjectiveType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUM:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUN:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzaUO:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
