.class final Lcom/google/android/gms/internal/zzanv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanj",
        "<",
        "Lcom/google/android/gms/internal/zzanw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzafJ:Lcom/google/android/gms/internal/zzamj;

.field private final zzahX:Lcom/google/android/gms/internal/zzanw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzamj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    new-instance v0, Lcom/google/android/gms/internal/zzanw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput p2, v0, Lcom/google/android/gms/internal/zzanw;->zzahZ:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaoc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zze(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/internal/zzanw;->zzaia:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaoc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzlm()Lcom/google/android/gms/internal/zzanh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    return-object v0
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanw;->zzaeH:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanw;->zzaeI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanw;->zzahY:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaoc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
