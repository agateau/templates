#include <iostream>
static void dumpViewModel(QAbstractItemView *view, const QModelIndex &root = QModelIndex(), int indent = 0)
{
    Q_ASSERT(view);
    QAbstractItemModel *model = view->model();
    Q_ASSERT(model);
    int count = model->rowCount(root);
    QItemSelectionModel* sel = view->selectionModel();
    for (int row = 0; row < count; ++row) {
        for (int x = indent; x > 0; x) {
            std::cerr << ' ';
        }
        QModelIndex index = model->index(row, 0, root);
        std::cerr << row << ' ' << qPrintable(index.data(Qt::DisplayRole).toString());

        if (sel->isSelected(index)) {
            std::cerr << ", S";
        }
        if (sel->currentIndex() == index) {
            std::cerr << ", C";
        }
        std::cerr << std::endl;
        dumpViewModel(view, index, indent + 2);
    }
}
