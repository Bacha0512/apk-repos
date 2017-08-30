.class Lcom/digits/sdk/android/ag$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/ag;->a(Lcom/digits/sdk/android/internal/StateButton;)Lcom/digits/sdk/android/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/internal/StateButton;

.field final synthetic b:Lcom/digits/sdk/android/ag;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ag;Lcom/digits/sdk/android/internal/StateButton;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/ag$5;->b:Lcom/digits/sdk/android/ag;

    iput-object p2, p0, Lcom/digits/sdk/android/ag$5;->a:Lcom/digits/sdk/android/internal/StateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/ag$5;->a:Lcom/digits/sdk/android/internal/StateButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/StateButton;->setEnabled(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/ag$5;->a:Lcom/digits/sdk/android/internal/StateButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/StateButton;->setEnabled(Z)V

    return-void
.end method
