.class public final Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbfb:I

.field private zzbfi:I

.field private zzbfj:Ljava/lang/String;

.field private zzbfk:Ljava/lang/String;

.field private zzbfl:Ljava/lang/String;

.field private zzbfm:Ljava/lang/String;

.field private zzbfn:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfi:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfb:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfn:Z

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfj:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfk:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/games/video/VideoConfiguration;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/games/video/VideoConfiguration;

    iget v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfi:I

    iget v2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfb:I

    iget-boolean v7, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfn:Z

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final setCaptureMode(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfb:I

    return-object p0
.end method

.method public final setQualityLevel(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfi:I

    return-object p0
.end method
