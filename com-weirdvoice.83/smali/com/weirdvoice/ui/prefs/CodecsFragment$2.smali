.class Lcom/weirdvoice/ui/prefs/CodecsFragment$2;
.super Ljava/lang/Object;
.source "CodecsFragment.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/prefs/CodecsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/prefs/CodecsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$2;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "textRepresentation"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0b003f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0b007e

    if-ne v5, v6, :cond_1

    .line 118
    const-string v5, "CodecsFragment"

    const-string v6, "Entiere line is binded "

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const v5, 0x7f0b0080

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, "tv":Landroid/widget/TextView;
    const v5, 0x7f0b007f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, "grabber":Landroid/widget/ImageView;
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 122
    .local v0, "checker":Landroid/widget/CompoundButton;
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment$2;->this$0:Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-nez v5, :cond_0

    .line 124
    const v5, -0x777778

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 137
    .end local v0    # "checker":Landroid/widget/CompoundButton;
    .end local v1    # "grabber":Landroid/widget/ImageView;
    .end local v2    # "tv":Landroid/widget/TextView;
    :goto_0
    return v3

    .line 128
    .restart local v0    # "checker":Landroid/widget/CompoundButton;
    .restart local v1    # "grabber":Landroid/widget/ImageView;
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 133
    .end local v0    # "checker":Landroid/widget/CompoundButton;
    .end local v1    # "grabber":Landroid/widget/ImageView;
    .end local v2    # "tv":Landroid/widget/TextView;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 137
    goto :goto_0
.end method
