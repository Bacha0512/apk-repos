.class final Lcom/google/android/gms/location/places/ui/zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzblu:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/zze;->zzblu:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/zze;->zzblu:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    invoke-static {v0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zza(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/zze;->zzblu:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    invoke-static {v0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzb(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V

    :cond_0
    return-void
.end method
