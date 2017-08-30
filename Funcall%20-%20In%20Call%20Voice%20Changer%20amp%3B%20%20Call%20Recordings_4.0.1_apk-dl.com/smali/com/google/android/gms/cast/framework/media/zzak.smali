.class final Lcom/google/android/gms/cast/framework/media/zzak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzauJ:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

.field private synthetic zzauK:Lcom/google/android/gms/cast/framework/media/zzal;

.field private synthetic zzauL:Lcom/google/android/gms/cast/framework/media/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzal;Lcom/google/android/gms/cast/framework/media/zzal;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzauJ:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzauK:Lcom/google/android/gms/cast/framework/media/zzal;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzauL:Lcom/google/android/gms/cast/framework/media/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzauJ:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzauK:Lcom/google/android/gms/cast/framework/media/zzal;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzauL:Lcom/google/android/gms/cast/framework/media/zzal;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzal;Lcom/google/android/gms/cast/framework/media/zzal;)V

    return-void
.end method
