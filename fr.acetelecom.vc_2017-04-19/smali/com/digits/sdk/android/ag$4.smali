.class Lcom/digits/sdk/android/ag$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/an;

.field final synthetic b:Lcom/digits/sdk/android/ag;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ag;Lcom/digits/sdk/android/an;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/ag$4;->b:Lcom/digits/sdk/android/ag;

    iput-object p2, p0, Lcom/digits/sdk/android/ag$4;->a:Lcom/digits/sdk/android/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ag$4;->a:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->e()V

    return-void
.end method
