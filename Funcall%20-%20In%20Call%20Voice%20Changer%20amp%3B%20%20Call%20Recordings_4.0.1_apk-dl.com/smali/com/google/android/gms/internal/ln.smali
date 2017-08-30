.class public final Lcom/google/android/gms/internal/ln;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/ActionCodeResult;


# instance fields
.field private final zzalO:Ljava/lang/String;

.field private final zzbXD:Ljava/lang/String;

.field private final zzbja:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ld;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/ld;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->zzEU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->zzalO:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->zzbXD:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->zzEV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->zzEV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASSWORD_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ln;->zzbja:I

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->zzEU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->zzalO:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->zzEV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERIFY_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ln;->zzbja:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->zzEV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RECOVER_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ln;->zzbja:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/google/android/gms/internal/ln;->zzbja:I

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/google/android/gms/internal/ln;->zzbja:I

    goto :goto_1
.end method


# virtual methods
.method public final getData(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->zzalO:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->zzbXD:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getOperation()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ln;->zzbja:I

    return v0
.end method
