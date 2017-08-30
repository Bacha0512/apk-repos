.class public final Lcom/google/firebase/appindexing/internal/zzq;
.super Lcom/google/firebase/appindexing/FirebaseUserActions;


# instance fields
.field private zzbVV:Lcom/google/firebase/appindexing/internal/zzs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/appindexing/FirebaseUserActions;-><init>()V

    new-instance v0, Lcom/google/firebase/appindexing/internal/zzs;

    invoke-direct {v0, p1}, Lcom/google/firebase/appindexing/internal/zzs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzbVV:Lcom/google/firebase/appindexing/internal/zzs;

    return-void
.end method

.method private final zza(ILcom/google/firebase/appindexing/Action;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/firebase/appindexing/Action;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/appindexing/internal/zza;

    if-eqz p2, :cond_1

    instance-of v1, p2, Lcom/google/firebase/appindexing/internal/zza;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;

    const-string v1, "Custom Action objects are not allowed. Please use the \'Actions\' or \'ActionBuilder\' class for creating Action objects."

    invoke-direct {v0, v1}, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p2, Lcom/google/firebase/appindexing/internal/zza;

    aput-object p2, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/google/firebase/appindexing/internal/zza;->zzEB()Lcom/google/firebase/appindexing/internal/zzb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/appindexing/internal/zzb;->zzbS(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzbVV:Lcom/google/firebase/appindexing/internal/zzs;

    new-instance v2, Lcom/google/firebase/appindexing/internal/zzr;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/appindexing/internal/zzr;-><init>(Lcom/google/firebase/appindexing/internal/zzq;[Lcom/google/firebase/appindexing/internal/zza;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/appindexing/internal/zzs;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final end(Lcom/google/firebase/appindexing/Action;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/appindexing/Action;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/appindexing/internal/zzq;->zza(ILcom/google/firebase/appindexing/Action;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final start(Lcom/google/firebase/appindexing/Action;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/appindexing/Action;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/appindexing/internal/zzq;->zza(ILcom/google/firebase/appindexing/Action;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
