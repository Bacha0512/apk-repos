.class Lcom/digits/sdk/android/bv$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bv;->a(Lcom/digits/sdk/android/CountryListSpinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/bv;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bv$1;->a:Lcom/digits/sdk/android/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bv$1;->a:Lcom/digits/sdk/android/bv;

    invoke-static {v0}, Lcom/digits/sdk/android/bv;->a(Lcom/digits/sdk/android/bv;)Lcom/digits/sdk/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ar;->a()V

    iget-object v0, p0, Lcom/digits/sdk/android/bv$1;->a:Lcom/digits/sdk/android/bv;

    iget-object v0, v0, Lcom/digits/sdk/android/bv;->e:Lcom/digits/sdk/android/bw;

    invoke-virtual {v0}, Lcom/digits/sdk/android/bw;->e()V

    return-void
.end method
