.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzaYA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaYB:Z

.field private zzaYC:Z

.field private zzaYD:Z

.field private zzaYu:Z

.field private zzaYv:Z

.field private zzaYw:I

.field private zzaYx:Z

.field private zzaYy:I

.field private zzaYz:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYu:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYv:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYw:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYx:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYy:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYz:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYA:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYB:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYC:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYD:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/games/Games$GamesOptions;
    .locals 12

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYv:Z

    iget v3, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYw:I

    iget v5, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYy:I

    iget-object v7, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYA:Ljava/util/ArrayList;

    move v4, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move-object v11, v6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/games/zzb;)V

    return-object v0
.end method

.method public final setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYy:I

    return-object p0
.end method

.method public final setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYv:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYw:I

    return-object p0
.end method

.method public final setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYv:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaYw:I

    return-object p0
.end method
