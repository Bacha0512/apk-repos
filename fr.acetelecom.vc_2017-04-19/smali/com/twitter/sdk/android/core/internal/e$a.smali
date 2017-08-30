.class public Lcom/twitter/sdk/android/core/internal/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/s;)Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/core/l;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/l;-><init>(Lcom/twitter/sdk/android/core/s;)V

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/l;->a()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    return-object v0
.end method
