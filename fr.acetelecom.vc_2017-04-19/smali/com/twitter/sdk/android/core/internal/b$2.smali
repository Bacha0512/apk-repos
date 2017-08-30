.class Lcom/twitter/sdk/android/core/internal/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/b;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/b$2;->a:Lcom/twitter/sdk/android/core/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/b$2;->a:Lcom/twitter/sdk/android/core/internal/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/b;->b()V

    return-void
.end method
