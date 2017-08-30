.class Lcom/weirdvoice/ui/EditFavs$DelListener;
.super Ljava/lang/Object;
.source "EditFavs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/EditFavs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/EditFavs;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/EditFavs;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/weirdvoice/ui/EditFavs$DelListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$DelListener;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/EditFavs$DelListener;-><init>(Lcom/weirdvoice/ui/EditFavs;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    :try_start_0
    iget-object v6, p0, Lcom/weirdvoice/ui/EditFavs$DelListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v7, 0x7f0b0046

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 133
    .local v0, "edtFav1":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/weirdvoice/ui/EditFavs$DelListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v7, 0x7f0b0048

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 134
    .local v1, "edtFav2":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/weirdvoice/ui/EditFavs$DelListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v7, 0x7f0b004a

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 135
    .local v2, "edtFav3":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/weirdvoice/ui/EditFavs$DelListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v7, 0x7f0b004c

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 136
    .local v3, "edtFav4":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/weirdvoice/ui/EditFavs$DelListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v7, 0x7f0b004e

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 138
    .local v4, "edtFav5":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 140
    .local v5, "viewId":I
    const v6, 0x7f0b0047

    if-ne v5, v6, :cond_0

    .line 141
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v0    # "edtFav1":Landroid/widget/EditText;
    .end local v1    # "edtFav2":Landroid/widget/EditText;
    .end local v2    # "edtFav3":Landroid/widget/EditText;
    .end local v3    # "edtFav4":Landroid/widget/EditText;
    .end local v4    # "edtFav5":Landroid/widget/EditText;
    .end local v5    # "viewId":I
    :goto_0
    return-void

    .line 142
    .restart local v0    # "edtFav1":Landroid/widget/EditText;
    .restart local v1    # "edtFav2":Landroid/widget/EditText;
    .restart local v2    # "edtFav3":Landroid/widget/EditText;
    .restart local v3    # "edtFav4":Landroid/widget/EditText;
    .restart local v4    # "edtFav5":Landroid/widget/EditText;
    .restart local v5    # "viewId":I
    :cond_0
    const v6, 0x7f0b0049

    if-ne v5, v6, :cond_1

    .line 143
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    .end local v0    # "edtFav1":Landroid/widget/EditText;
    .end local v1    # "edtFav2":Landroid/widget/EditText;
    .end local v2    # "edtFav3":Landroid/widget/EditText;
    .end local v3    # "edtFav4":Landroid/widget/EditText;
    .end local v4    # "edtFav5":Landroid/widget/EditText;
    .end local v5    # "viewId":I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 144
    .restart local v0    # "edtFav1":Landroid/widget/EditText;
    .restart local v1    # "edtFav2":Landroid/widget/EditText;
    .restart local v2    # "edtFav3":Landroid/widget/EditText;
    .restart local v3    # "edtFav4":Landroid/widget/EditText;
    .restart local v4    # "edtFav5":Landroid/widget/EditText;
    .restart local v5    # "viewId":I
    :cond_1
    const v6, 0x7f0b004b

    if-ne v5, v6, :cond_2

    .line 145
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_2
    const v6, 0x7f0b004d

    if-ne v5, v6, :cond_3

    .line 147
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_3
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
