.class public Lcom/coui/appcompat/widget/COUICheckedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "COUICheckedLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;->getChildCount()I

    move-result v0

    .line 47
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 49
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/Checkable;

    if-eqz v4, :cond_0

    .line 50
    move-object v1, v3

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    return v1

    .line 47
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .line 59
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;->getChildCount()I

    move-result v0

    .line 60
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 63
    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 60
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;->getChildCount()I

    move-result v0

    .line 72
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUICheckedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 75
    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->toggle()V

    .line 72
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
